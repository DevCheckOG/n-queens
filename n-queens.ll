; ModuleID = 'n-queens.c'
source_filename = "n-queens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"Solution %d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

define void @solve(i32 %0, i32 %1, ptr %2, ptr %3, ptr %4, ptr %5) {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  store i32 %0, ptr %7, align 4
  store i32 %1, ptr %8, align 4
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  store ptr %5, ptr %12, align 8
  %18 = load i32, ptr %8, align 4
  %19 = load i32, ptr %7, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %105

21:
  %22 = load i32, ptr %7, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = call noalias ptr @malloc(i64 %24)
  store ptr %25, ptr %13, align 8
  store i32 0, ptr %14, align 4
  br label %26

26:
  %27 = load i32, ptr %14, align 4
  %28 = load i32, ptr %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %69

30:
  %31 = load i32, ptr %7, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = call noalias ptr @malloc(i64 %33)
  %35 = load ptr, ptr %13, align 8
  %36 = load i32, ptr %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %35, i64 %37
  store ptr %34, ptr %38, align 8
  %39 = load ptr, ptr %13, align 8
  %40 = load i32, ptr %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  %43 = load ptr, ptr %42, align 8
  %44 = load i32, ptr %7, align 4
  %45 = sext i32 %44 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %43, i8 46, i64 %45, i1 false)
  %46 = load ptr, ptr %13, align 8
  %47 = load i32, ptr %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  %50 = load ptr, ptr %49, align 8
  %51 = load ptr, ptr %9, align 8
  %52 = load i32, ptr %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, ptr %51, i64 %53
  %55 = load i32, ptr %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %50, i64 %56
  store i8 81, ptr %57, align 1
  %58 = load ptr, ptr %13, align 8
  %59 = load i32, ptr %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds ptr, ptr %58, i64 %60
  %62 = load ptr, ptr %61, align 8
  %63 = load i32, ptr %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, ptr %62, i64 %64
  store i8 0, ptr %65, align 1
  br label %66

66:
  %67 = load i32, ptr %14, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %14, align 4
  br label %26, !llvm.loop !6

69:
  %70 = load ptr, ptr %11, align 8
  %71 = load i32, ptr %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %70, align 4
  %73 = load ptr, ptr %10, align 8
  %74 = load ptr, ptr %73, align 8
  %75 = load ptr, ptr %11, align 8
  %76 = load i32, ptr %75, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 8
  %79 = call ptr @realloc(ptr %74, i64 %78)
  %80 = load ptr, ptr %10, align 8
  store ptr %79, ptr %80, align 8
  %81 = load ptr, ptr %12, align 8
  %82 = load ptr, ptr %81, align 8
  %83 = load ptr, ptr %11, align 8
  %84 = load i32, ptr %83, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 4
  %87 = call ptr @realloc(ptr %82, i64 %86)
  %88 = load ptr, ptr %12, align 8
  store ptr %87, ptr %88, align 8
  %89 = load i32, ptr %7, align 4
  %90 = load ptr, ptr %12, align 8
  %91 = load ptr, ptr %90, align 8
  %92 = load ptr, ptr %11, align 8
  %93 = load i32, ptr %92, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, ptr %91, i64 %95
  store i32 %89, ptr %96, align 4
  %97 = load ptr, ptr %13, align 8
  %98 = load ptr, ptr %10, align 8
  %99 = load ptr, ptr %98, align 8
  %100 = load ptr, ptr %11, align 8
  %101 = load i32, ptr %100, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds ptr, ptr %99, i64 %103
  store ptr %97, ptr %104, align 8
  br label %172

105:
  store i32 0, ptr %15, align 4
  br label %106

106:
  %107 = load i32, ptr %15, align 4
  %108 = load i32, ptr %7, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %172

110:
  store i8 1, ptr %16, align 1
  store i32 0, ptr %17, align 4
  br label %111

111:
  %112 = load i32, ptr %17, align 4
  %113 = load i32, ptr %8, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %152

115:
  %116 = load ptr, ptr %9, align 8
  %117 = load i32, ptr %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, ptr %116, i64 %118
  %120 = load i32, ptr %119, align 4
  %121 = load i32, ptr %15, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %147, label %123

123:
  %124 = load ptr, ptr %9, align 8
  %125 = load i32, ptr %17, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, ptr %124, i64 %126
  %128 = load i32, ptr %127, align 4
  %129 = load i32, ptr %17, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load i32, ptr %15, align 4
  %132 = load i32, ptr %8, align 4
  %133 = sub nsw i32 %131, %132
  %134 = icmp eq i32 %130, %133
  br i1 %134, label %147, label %135

135:
  %136 = load ptr, ptr %9, align 8
  %137 = load i32, ptr %17, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, ptr %136, i64 %138
  %140 = load i32, ptr %139, align 4
  %141 = load i32, ptr %17, align 4
  %142 = add nsw i32 %140, %141
  %143 = load i32, ptr %15, align 4
  %144 = load i32, ptr %8, align 4
  %145 = add nsw i32 %143, %144
  %146 = icmp eq i32 %142, %145
  br i1 %146, label %147, label %148

147:
  store i8 0, ptr %16, align 1
  br label %152

148:
  br label %149

149:
  %150 = load i32, ptr %17, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, ptr %17, align 4
  br label %111, !llvm.loop !8

152:
  %153 = load i8, ptr %16, align 1
  %154 = trunc i8 %153 to i1
  br i1 %154, label %155, label %168

155:
  %156 = load i32, ptr %15, align 4
  %157 = load ptr, ptr %9, align 8
  %158 = load i32, ptr %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, ptr %157, i64 %159
  store i32 %156, ptr %160, align 4
  %161 = load i32, ptr %7, align 4
  %162 = load i32, ptr %8, align 4
  %163 = add nsw i32 %162, 1
  %164 = load ptr, ptr %9, align 8
  %165 = load ptr, ptr %10, align 8
  %166 = load ptr, ptr %11, align 8
  %167 = load ptr, ptr %12, align 8
  call void @solve(i32 %161, i32 %163, ptr %164, ptr %165, ptr %166, ptr %167)
  br label %168

168:
  br label %169

169:
  %170 = load i32, ptr %15, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, ptr %15, align 4
  br label %106, !llvm.loop !9

172:
  ret void
}



define ptr @solveNQueens(i32 %0, ptr %1, ptr  %2)  {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %9 = load i32, ptr %4, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = call noalias ptr @malloc(i64 %11) #6
  store ptr %12, ptr %7, align 8
  %13 = call noalias ptr @malloc(i64 0) #6
  store ptr %13, ptr %8, align 8
  %14 = load ptr, ptr %5, align 8
  store i32 0, ptr %14, align 4
  %15 = call noalias ptr @malloc(i64 0) #6
  %16 = load ptr, ptr %6, align 8
  store ptr %15, ptr %16, align 8
  %17 = load i32, ptr %4, align 4
  %18 = load ptr, ptr %7, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = load ptr, ptr %6, align 8
  call void @solve(i32 %17, i32 0, ptr %18, ptr %8, ptr %19, ptr %20)
  %21 = load ptr, ptr %7, align 8
  call void @free(ptr %21) #8
  %22 = load ptr, ptr %8, align 8
  ret ptr %22
}



define i32 @main()  {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 4, ptr %2, align 4
  %10 = load i32, ptr %2, align 4
  %11 = call ptr @solveNQueens(i32 %10, ptr %3, ptr %4)
  store ptr %11, ptr %5, align 8
  store i32 0, ptr %6, align 4
  br label %12

12:
  %13 = load i32, ptr %6, align 4
  %14 = load i32, ptr %3, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %43

16:
  %17 = load i32, ptr %6, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i32 (ptr, ...) @printf(ptr @.str, i32 s %18)
  store i32 0, ptr %7, align 4
  br label %20

20:
  %21 = load i32, ptr %7, align 4
  %22 = load i32, ptr %2, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %38

24:
  %25 = load ptr, ptr %5, align 8
  %26 = load i32, ptr %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8
  %30 = load i32, ptr %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %29, i64 %31
  %33 = load ptr, ptr %32, align 8
  %34 = call i32 (ptr, ...) @printf(ptr @.str.1, ptr %33)
  br label %35

35:
  %36 = load i32, ptr %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %7, align 4
  br label %20, !llvm.loop !10

38:
  %39 = call i32 (ptr, ...) @printf(ptr @.str.2)
  br label %40

40:
  %41 = load i32, ptr %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %6, align 4
  br label %12, !llvm.loop !11

43:
  store i32 0, ptr %8, align 4
  br label %44

44:
  %45 = load i32, ptr %8, align 4
  %46 = load i32, ptr %3, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %75

48:
  store i32 0, ptr %9, align 4
  br label %49

49:
  %50 = load i32, ptr %9, align 4
  %51 = load i32, ptr %2, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %66

53:
  %54 = load ptr, ptr %5, align 8
  %55 = load i32, ptr %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %54, i64 %56
  %58 = load ptr, ptr %57, align 8
  %59 = load i32, ptr %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds ptr, ptr %58, i64 %60
  %62 = load ptr, ptr %61, align 8
  call void @free(ptr noundef %62) #8
  br label %63

63:
  %64 = load i32, ptr %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %9, align 4
  br label %49, !llvm.loop !12

66:
  %67 = load ptr, ptr %5, align 8
  %68 = load i32, ptr %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %67, i64 %69
  %71 = load ptr, ptr %70, align 8
  call void @free(ptr noundef %71) #8
  br label %72

72:
  %73 = load i32, ptr %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %8, align 4
  br label %44, !llvm.loop !13

75:
  %76 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %76) #8
  %77 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %77) #8
  ret i32 0
}

declare i32 @printf(ptr, ...)
declare void @free(ptr)
declare ptr @malloc(i64 noundef) #1
declare void @llvm.memset.p0.i64(ptr, i8, i64, i1) #2
declare ptr @realloc(ptr, i64 noundef) #3

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
