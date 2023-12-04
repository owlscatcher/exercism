using System;
using System.Linq;

class BirdCount
{
    private int[] birdsPerDay;

    public BirdCount(int[] birdsPerDay)
    {
        this.birdsPerDay = birdsPerDay;
    }

    public static int[] LastWeek() => new[] {0, 2, 5, 3, 7, 8, 4};

    public int Today() => this.birdsPerDay.Last();

    public void IncrementTodaysCount() => this.birdsPerDay[^1]++;

    public bool HasDayWithoutBirds() => this.birdsPerDay.Contains(0);

		public int CountForFirstDays(int numberOfDays) => this.birdsPerDay.Take(numberOfDays).Sum();

    public int BusyDays() => this.birdsPerDay.Count(day => day >= 5);
}
