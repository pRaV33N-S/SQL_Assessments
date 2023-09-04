using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Assignment16.Data;
using Assignment16.Models;

namespace Assignment16.Controllers
{
    public class TheTasksController : Controller
    {
        private readonly Assignment16Context _context;

        public TheTasksController(Assignment16Context context)
        {
            _context = context;
        }

        // GET: TheTasks
        public async Task<IActionResult> Index()
        {
              return _context.TheTask != null ? 
                          View(await _context.TheTask.ToListAsync()) :
                          Problem("Entity set 'Assignment16Context.TheTask'  is null.");
        }
        public async Task<IActionResult> DisplayTaks()
        {
            return _context.TheTask != null ?
                        View(await _context.TheTask.ToListAsync()) :
                        Problem("Entity set 'Assignment16Context.TheTask'  is null.");
        }

        // GET: TheTasks/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.TheTask == null)
            {
                return NotFound();
            }

            var theTask = await _context.TheTask
                .FirstOrDefaultAsync(m => m.Id == id);
            if (theTask == null)
            {
                return NotFound();
            }

            return View(theTask);
        }

        // GET: TheTasks/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: TheTasks/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Title,Description,DueDate")] TheTask theTask)
        {
            if (ModelState.IsValid)
            {
                _context.Add(theTask);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(theTask);
        }

        // GET: TheTasks/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.TheTask == null)
            {
                return NotFound();
            }

            var theTask = await _context.TheTask.FindAsync(id);
            if (theTask == null)
            {
                return NotFound();
            }
            return View(theTask);
        }

        // POST: TheTasks/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Title,Description,DueDate")] TheTask theTask)
        {
            if (id != theTask.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(theTask);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!TheTaskExists(theTask.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(theTask);
        }

        // GET: TheTasks/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.TheTask == null)
            {
                return NotFound();
            }

            var theTask = await _context.TheTask
                .FirstOrDefaultAsync(m => m.Id == id);
            if (theTask == null)
            {
                return NotFound();
            }

            return View(theTask);
        }

        // POST: TheTasks/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.TheTask == null)
            {
                return Problem("Entity set 'Assignment16Context.TheTask'  is null.");
            }
            var theTask = await _context.TheTask.FindAsync(id);
            if (theTask != null)
            {
                _context.TheTask.Remove(theTask);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool TheTaskExists(int id)
        {
          return (_context.TheTask?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
