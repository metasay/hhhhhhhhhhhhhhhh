# import math
# from collections import defaultdict
# def solution(picks, minerals):
#     answer = 0
#     min_len = (len(minerals) // 5) +1
#     min_dict = defaultdict(int)
#     total_pick = sum(picks) * 5
#     minerals = minerals[:total_pick]
#
#     count = 0
#     for i in minerals:
#         if i == "diamond":
#             min_dict[count//5] += 25
#         elif i == "iron":
#             min_dict[count//5] += 5
#         else:
#             min_dict[count//5] += 1
#         count += 1
#
#     min_dict = dict(min_dict)
#     min_dict = sorted(min_dict.items(), key=lambda x: x[1], reverse = True)
#
#     renewal_minerals = list()
#     for i in range(len(min_dict)):
#         idx = min_dict[i][0]
#         renewal_minerals.append(minerals[idx*5: (idx*5)+5])
#
#
#     renew_picks = list()
#     renew_picks.extend([25]*(picks[0]))
#     renew_picks.extend([5]*(picks[1]))
#     renew_picks.extend([1]*(picks[2]))
#
#     for idx in range(0, min(len(renew_picks), len(renewal_minerals))):
#         for i in renewal_minerals[idx]:
#             if i == "diamond":
#                 answer += math.ceil(25 / renew_picks[idx])
#             elif i == "iron":
#                 answer += math.ceil(5 / renew_picks[idx])
#             else:
#                 answer += math.ceil(1 / renew_picks[idx])
#
#
#     return answer
# import collections
#
# def solution(gems):
#     num = len(set(gems))
#     ret = []
#
#     left = 0
#     counter = collections.Counter()
#     for right in range(len(gems)):
#         counter[gems[right]] += 1
#         right += 1
#         while len(counter) == num:
#             counter[gems[left]] -= 1
#             if counter[gems[left]] == 0:
#                 del counter[gems[left]]
#             left += 1
#             ret.append([left, right])
#
#     return sorted(ret, key = lambda x: (x[1]-x[0], x[0]))[0]




# import turtle
#
#
# s = turtle.Screen()
# s.setup(650,800)
# s.bgcolor("lightcyan")
# t = turtle.Turtle()
# t.pensize(5)
# t.speed(1)
# t.color("black", "#f0a53a")
# t.penup()
# t.goto(-90, 20)
# t.pendown()
# t.begin_fill()
# t.setheading(220)
# t.circle(80, 100)
# t.setheading(270)
# t.forward(100)
# t.circle(35, 180)
# t.forward(20)
# t.right(90)
# t.forward(40)
# t.right(90)
# t.forward(20)
# t.circle(35, 180)
# t.forward(100)
# t.setheading(40)
# t.circle(80, 100)
# t.goto(-90, 20)
# t.end_fill()
# t.penup()
# t.goto(-90, -30)
# t.pendown()
# t.goto(-90, -100)
# t.penup()
# t.goto(90, -30)
# t.pendown()
# t.goto(90, -100)
# t.color("white", "white")
# t.penup()
# t.goto(40, -40)
# t.pendown()
# t.begin_fill()
# t.goto(20, -60)
# t.goto(0, -40)
# t.goto(-20, -60)
# t.goto(-40, -40)
# t.setheading(240)
# t.circle(47, 240)
# t.end_fill()
# t.color("black", "#f0a53a")
# t.penup()
# t.goto(-70, 210)
# t.pendown()
# t.begin_fill()
# t.setheading(120)
# t.circle(30, 210)
# t.end_fill()
# t.penup()
# t.goto(70, 210)
# t.pendown()
# t.begin_fill()
# t.setheading(60)
# t.circle(-30, 210)
# t.end_fill()
# t.penup()
# t.goto(0, 230)
# t.pendown()
# t.begin_fill()
# t.setheading(180)
# t.circle(130)
# t.end_fill()
# t.pensize(10)
# t.penup()
# t.goto(-80, 130)
# t.pendown()
# t.goto(-30, 130)
# t.penup()
# t.goto(80, 130)
# t.pendown()
# t.goto(30, 130)
# t.penup()
# t.goto(-55, 110)
# t.pendown()
# t.dot(15)
# t.penup()
# t.goto(55, 110)
# t.pendown()
# t.dot(15)
# t.pensize(5)
# t.color("black", "white")
# t.penup()
# t.goto(-10, 80)
# t.pendown()
# t.begin_fill()
# t.setheading(155)
# t.circle(18, 240)
# t.circle(25, 25)
# t.right(116)
# t.circle(25, 25)
# t.circle(18, 240)
# t.goto(0, 80)
# t.dot(20)
# t.end_fill()
# t.hideturtle()
# s.update()
# s.mainloop()
#
# import turtle as t
#
# t.pensize(4)
# t.speed(1)
# body_color = "#f8d849"
# cheek_color = "#d85d2d"
# t.color("black", body_color)
# def drawface():
#     t.penup()
#     t.goto(-50, -120)
#     t.pendown()
#     t.begin_fill()
#     t.seth(160)
#     t.circle(-160, 30)
#     t.right(10)
#     t.circle(-80, 60)
#     t.circle(90, 30)
#     t.circle(-60, 70)
#     t.circle(-200, 40)
#     t.circle(-60, 70)
#     t.circle(90, 30)
#     t.circle(-80, 60)
#     t.right(10)
#     t.circle(-160, 30)
#     t.goto(-50, -120)
#     t.end_fill()
# def drawear(d):
#     t.color("black", body_color)
#     t.penup()
#     t.goto(85*d, 90)
#     t.pendown()
#     t.begin_fill()
#     t.seth(90+60*(-d))
#     t.circle(240*d, 50)
#     x,y = t.pos()
#     t.right(180+60*d)
#     t.circle(240*d, 50)
#     t.end_fill()
#     t.color("black", "black")
#     t.penup()
#     t.goto(x,y)
#     t.pendown()
#     t.begin_fill()
#     t.goto(t.xcor()+31*(-d), t.ycor()-83)
#     t.goto(t.xcor()+30*(-d), t.ycor()+50)
#     t.goto(x,y)
#     t.end_fill()
# def draweye(d):
#     t.penup()
#     t.goto(60*d, 30)
#     t.dot(40, "black")
#     t.penup()
#     t.goto(50*d, 30)
#     t.dot(15, "white")
# def drawnose():
#     t.color("black", "black")
#     t.penup()
#     t.goto(-5, -10)
#     t.pendown()
#     t.begin_fill()
#     t.seth(270)
#     t.circle(5, 180)
#     t.goto(-5, -10)
#     t.end_fill()
# def drawmouth():
#     t.penup()
#     t.goto(-40, -30)
#     t.pendown()
#     t.seth(315)
#     t.circle(30, 90)
#     t.right(90)
#     t.circle(30, 90)
# def drawcheek(d):
#     t.penup()
#     t.goto(90*d, -40)
#     t.dot(60, cheek_color)
# drawface()
# drawear(-1)
# drawear(1)
# draweye(-1)
# draweye(1)
# drawnose()
# drawmouth()
# drawcheek(-1)
# drawcheek(1)
#
# t.hideturtle()
# t.update()
# t.mainloop()
import turtle as t


def fclick(x, y):
    t.fillcolor("red")


def frelease(x, y):
    t.fillcolor("skyblue")


def fup():
    t.forward(30)


def fdown():
    t.back(30)


def fleft():
    t.left(15)


def fright():
    t.right(15)


def main():
    t.bgcolor("wheat")
    t.pensize(3)
    t.speed(0)
    t.shapesize(1)
    t.shape("turtle")
    t.color("black", "skyblue")

    t.onscreenclick(t.goto)
    t.ondrag(t.goto)
    t.onclick(fclick)
    t.onrelease(frelease)
    t.onkey(fup, "Up")
    t.onkey(fdown, "Down")
    t.onkey(fleft, "Left")
    t.onkey(fright, "Right")
    t.listen()
    return


if __name__ == "__main__":
    main()
    t.mainloop()
