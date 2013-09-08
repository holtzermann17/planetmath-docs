;; Revenues

(defvar N-subscription-members 300
  "Number of people paying a monthly patronage fee at any given point in time.")

(defvar N-working-members 30
  "Number of people who get member benefits by dint of work at any given point in time.")

(defvar N-students 10
  "Number of enrolled students in each course.")

(defvar N-tutees-per-month 10
  "Number of students who sign up for tutoring per month.")

(defvar k-course-session-fee 5
  "Student fee for an hour long course.")

(defvar k-tutoring-session-fee 50
  "Student fee for an hour of one-to-one tutoring.")

(defvar k-member-monthly-fee 5
  "Member fee for a month of patronage long course.")

(defvar m-sessions-per-course 30
  "Number of sessions in a standard course (Monday, Wednesday, Friday for 10 weeks).")

(defvar m-courses-per-year 4
  "Number of courses we will run per year.")

(defvar C-months-per-year 12
  "Number of months in the year (useful as multiplier for 'monthly fees').")

(defvar J-total-advertising-revenue-per-month 1000
  "Total advertising revenue per month (current best guess).")

(defvar r-teacher-fee-percentage .9
  "Fraction of the course or tutoring fee that goes to the teacher.")

(defvar r-planetmath-fee-percentage .1
  "Fraction of the course or tutoring fee that goes to PlanetMath as an overhead.")

(defvar r-planetmath-ad-percentage .25
  "Fraction of advertising revenue that goes to PlanetMath or is otherwise spent on direct enhancements to the site.")

(defvar course-revenue (* N-students
                          k-course-session-fee
                          m-sessions-per-course
                          m-courses-per-year))

(defvar teacher-payments (* r-teacher-fee-percentage
                            course-revenue))

(defvar course-income (* r-planetmath-fee-percentage
                         course-revenue))

(defvar tutoring-revenue (* N-tutees-per-month
                            k-tutoring-session-fee
                            C-months-per-year))

(defvar tutoring-payments (* r-teacher-fee-percentage
                             tutoring-revenue))

(defvar tutoring-income (* r-planetmath-fee-percentage
                           tutoring-revenue))

(defvar membership-income (* N-subscription-members
                             k-member-monthly-fee
                             C-months-per-year))

(defvar ad-income (* r-planetmath-ad-percentage
                     J-total-advertising-revenue-per-month
                     C-months-per-year))

(defvar dispensible-funds-per-year (+ membership-income
                                      course-income
                                      tutoring-income
                                      ad-income))

;; Expenses

;; these are one-time start-up costs
(defvar cost-of-membership-system 10000)
(defvar cost-of-top-100-tickets 10000)

;; these are recurring costs
(defvar cost-of-ongoing-maintenance 10000)
(defvar cost-of-ongoing-content-work 10000)
