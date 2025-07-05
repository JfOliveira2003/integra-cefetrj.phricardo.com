
import { CalendarResponse } from "../calendarResponse.type";

describe("CalendarResponse", () => {
  it("should correctly assign values", () => {
    const calendar: CalendarResponse = {
      calendars: [
        {
          year: "2024",
          calendar: [
            {
              id: 1,
              title: "Event 1",
              description: "Description 1",
              type: "Type A",
              start: "2024-01-01",
              end: "2024-01-02",
            },
          ],
        },
      ],
    };

    expect(calendar.calendars[0].year).toBe("2024");
    expect(calendar.calendars[0].calendar[0].id).toBe(1);
  });
});
