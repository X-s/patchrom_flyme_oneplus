.class public Lcom/android/server/policy/OemThreePointersGesturesListener;
.super Ljava/lang/Object;
.source "OemThreePointersGesturesListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/OemThreePointersGesturesListener$YComparator;,
        Lcom/android/server/policy/OemThreePointersGesturesListener$XComparator;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MAX_POINT_NUM:I = 0xc8

.field private static final MSG_OEM_PAUSE_DELIVER_POINTER:I = 0x3

.field private static final MSG_OEM_RESUME_DELIVER_POINTER:I = 0x4

.field private static final MSG_OEM_TAKE_SCREEN_SHOT:I = 0x5

.field private static final SCREEN_SHOT_PRECISE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "OemGestures"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private mFirstShotY:I

.field private mHandler:Landroid/os/Handler;

.field private mIsShotScreenEnable:Z

.field private mLast1ShotY:Landroid/graphics/Point;

.field private mLast2ShotY:Landroid/graphics/Point;

.field private mMaxNumPointers:I

.field private mPointers0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mPointers1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mPointers2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenHeight:I

.field mScreenLength_1_3:I

.field private mScreenWidth:I

.field mScreenWidth_1_3:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/policy/OemThreePointersGesturesListener;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, -0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    .line 57
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mIsShotScreenEnable:Z

    .line 59
    iput v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mFirstShotY:I

    .line 63
    iput v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenHeight:I

    .line 64
    iput v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenWidth:I

    .line 185
    iput v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenLength_1_3:I

    .line 186
    iput v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenWidth_1_3:I

    .line 71
    iput-object p1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 74
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 75
    .local v1, "wm":Landroid/view/WindowManager;
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mActivityManager:Landroid/app/ActivityManager;

    .line 76
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 77
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenLength_1_3:I

    .line 78
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenWidth_1_3:I

    .line 80
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenHeight:I

    .line 81
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenWidth:I

    .line 82
    return-void
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    return-object p1
.end method

.method private getAngle(Ljava/util/ArrayList;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "pointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const/4 v6, 0x0

    .line 219
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ltz v5, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v5, v6

    .line 236
    :goto_0
    return v5

    .line 222
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 223
    .local v4, "length":I
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v7, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v2, v7, v5

    .line 224
    .local v2, "deltX":I
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v7, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int v3, v7, v5

    .line 225
    .local v3, "deltY":I
    if-nez v2, :cond_3

    .line 226
    if-ltz v3, :cond_2

    .line 227
    const/16 v5, 0x5a

    goto :goto_0

    .line 229
    :cond_2
    const/16 v5, -0x5a

    goto :goto_0

    .line 232
    :cond_3
    int-to-double v6, v3

    int-to-double v8, v2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 233
    .local v0, "angle":D
    if-gez v2, :cond_4

    .line 234
    const-wide v6, 0x4066800000000000L    # 180.0

    add-double/2addr v0, v6

    .line 236
    :cond_4
    double-to-int v5, v0

    goto :goto_0
.end method

.method private getDeltaAngle(II)I
    .locals 2
    .param p1, "angle0"    # I
    .param p2, "angle1"    # I

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "deltaAngle":I
    if-le p1, p2, :cond_2

    .line 242
    sub-int v0, p1, p2

    .line 246
    :cond_0
    :goto_0
    const/16 v1, 0xb4

    if-le v0, v1, :cond_1

    .line 247
    rsub-int v0, v0, 0x168

    .line 249
    :cond_1
    return v0

    .line 243
    :cond_2
    if-ge p1, p2, :cond_0

    .line 244
    sub-int v0, p2, p1

    goto :goto_0
.end method

.method private getMaxDeltaAngle()I
    .locals 8

    .prologue
    .line 253
    iget-object v7, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getAngle(Ljava/util/ArrayList;)I

    move-result v0

    .line 254
    .local v0, "angle0":I
    iget-object v7, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getAngle(Ljava/util/ArrayList;)I

    move-result v1

    .line 255
    .local v1, "angle1":I
    iget-object v7, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getAngle(Ljava/util/ArrayList;)I

    move-result v2

    .line 257
    .local v2, "angle2":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getDeltaAngle(II)I

    move-result v3

    .line 258
    .local v3, "deltAngle0":I
    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getDeltaAngle(II)I

    move-result v4

    .line 259
    .local v4, "deltAngle1":I
    invoke-direct {p0, v0, v2}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getDeltaAngle(II)I

    move-result v5

    .line 261
    .local v5, "deltAngle2":I
    if-le v3, v4, :cond_0

    move v6, v3

    .line 262
    .local v6, "maxDeltaAngle":I
    :goto_0
    if-le v6, v5, :cond_1

    .line 264
    :goto_1
    return v6

    .end local v6    # "maxDeltaAngle":I
    :cond_0
    move v6, v4

    .line 261
    goto :goto_0

    .restart local v6    # "maxDeltaAngle":I
    :cond_1
    move v6, v5

    .line 262
    goto :goto_1
.end method

.method private getScreenHeight_1_3()I
    .locals 2

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 178
    .local v0, "orient":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 179
    iget v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenWidth_1_3:I

    .line 181
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenLength_1_3:I

    goto :goto_0
.end method

.method private getScreenWidth_1_3()I
    .locals 2

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 169
    .local v0, "orient":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 170
    iget v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenLength_1_3:I

    .line 172
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenWidth_1_3:I

    goto :goto_0
.end method

.method private recordPointers(Landroid/view/MotionEvent;II)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointIndex"    # I
    .param p3, "maxNumPointers"    # I

    .prologue
    const/16 v4, 0xc8

    const/4 v3, 0x0

    .line 189
    const/4 v2, 0x3

    if-ne p3, v2, :cond_1

    .line 190
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 191
    .local v1, "pointTemp":Landroid/graphics/Point;
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 192
    .local v0, "pointId":I
    if-nez v0, :cond_2

    .line 193
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 194
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 195
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 196
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v0    # "pointId":I
    .end local v1    # "pointTemp":Landroid/graphics/Point;
    :cond_1
    :goto_0
    return-void

    .line 200
    .restart local v0    # "pointId":I
    .restart local v1    # "pointTemp":Landroid/graphics/Point;
    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 201
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 202
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 203
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 204
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 206
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 208
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 209
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 210
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_5

    .line 211
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 213
    :cond_5
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private shouldShot()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 269
    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 270
    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 271
    .local v2, "last2":I
    add-int/lit8 v1, v2, -0x5

    .line 272
    .local v1, "last1":I
    if-lez v1, :cond_2

    .line 273
    :goto_0
    if-lez v2, :cond_3

    .line 274
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iput-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mLast1ShotY:Landroid/graphics/Point;

    .line 275
    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iput-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mLast2ShotY:Landroid/graphics/Point;

    .line 278
    .end local v1    # "last1":I
    .end local v2    # "last2":I
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getMaxDeltaAngle()I

    move-result v0

    .line 279
    .local v0, "deltAngle":I
    const/16 v3, 0x1e

    if-lt v0, v3, :cond_4

    .line 283
    :cond_1
    :goto_2
    return v4

    .end local v0    # "deltAngle":I
    .restart local v1    # "last1":I
    .restart local v2    # "last2":I
    :cond_2
    move v1, v4

    .line 272
    goto :goto_0

    :cond_3
    move v2, v4

    .line 273
    goto :goto_1

    .line 283
    .end local v1    # "last1":I
    .end local v2    # "last2":I
    .restart local v0    # "deltAngle":I
    :cond_4
    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/policy/OemThreePointersGesturesListener;->shouldShotByPoints(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/policy/OemThreePointersGesturesListener;->shouldShotByPoints(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/policy/OemThreePointersGesturesListener;->shouldShotByPoints(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    goto :goto_2
.end method

.method private shouldShotByPoints(Ljava/util/ArrayList;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "pointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const/4 v7, 0x0

    .line 288
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ltz v8, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move v0, v7

    .line 314
    :goto_0
    return v0

    .line 293
    :cond_1
    new-instance v6, Lcom/android/server/policy/OemThreePointersGesturesListener$YComparator;

    invoke-direct {v6, p0}, Lcom/android/server/policy/OemThreePointersGesturesListener$YComparator;-><init>(Lcom/android/server/policy/OemThreePointersGesturesListener;)V

    .line 294
    .local v6, "yComparator":Lcom/android/server/policy/OemThreePointersGesturesListener$YComparator;
    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 295
    invoke-static {p1, v6}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 296
    .local v2, "maxPCY":Landroid/graphics/Point;
    invoke-static {p1, v6}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 297
    .local v4, "minPCY":Landroid/graphics/Point;
    sget-boolean v8, Lcom/android/server/policy/OemThreePointersGesturesListener;->DEBUG:Z

    if-eqz v8, :cond_2

    .line 298
    const-string v8, "OemGestures"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " maxPCY.y"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " minPCY.y"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "pointers"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_2
    new-instance v5, Lcom/android/server/policy/OemThreePointersGesturesListener$XComparator;

    invoke-direct {v5, p0}, Lcom/android/server/policy/OemThreePointersGesturesListener$XComparator;-><init>(Lcom/android/server/policy/OemThreePointersGesturesListener;)V

    .line 303
    .local v5, "xComparator":Lcom/android/server/policy/OemThreePointersGesturesListener$XComparator;
    invoke-static {p1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 304
    invoke-static {p1, v5}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 305
    .local v1, "maxPCX":Landroid/graphics/Point;
    invoke-static {p1, v5}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 306
    .local v3, "minPCX":Landroid/graphics/Point;
    sget-boolean v8, Lcom/android/server/policy/OemThreePointersGesturesListener;->DEBUG:Z

    if-eqz v8, :cond_3

    .line 307
    const-string v8, "OemGestures"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " maxPCX.x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " minPCX.x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "pointers"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_3
    const/4 v0, 0x0

    .line 312
    .local v0, "bResult":Z
    iget v8, v2, Landroid/graphics/Point;->y:I

    iget v9, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-direct {p0}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getScreenHeight_1_3()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    if-le v8, v9, :cond_4

    iget v8, v1, Landroid/graphics/Point;->x:I

    iget v9, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-direct {p0}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getScreenWidth_1_3()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_4

    const/4 v0, 0x1

    .line 314
    :goto_1
    goto/16 :goto_0

    :cond_4
    move v0, v7

    .line 312
    goto :goto_1
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v10, 0xff00

    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 95
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-eqz v4, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mIsShotScreenEnable:Z

    if-eqz v4, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 104
    .local v1, "action":I
    if-eqz v1, :cond_2

    and-int/lit16 v4, v1, 0xff

    if-ne v4, v9, :cond_6

    .line 106
    :cond_2
    and-int v4, v1, v10

    shr-int/lit8 v3, v4, 0x8

    .line 108
    .local v3, "index":I
    if-nez v1, :cond_3

    .line 109
    iput-boolean v8, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurDown:Z

    .line 110
    iput v6, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    .line 111
    iput v6, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mMaxNumPointers:I

    .line 114
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 115
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 116
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 119
    :cond_3
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    .line 122
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    if-ne v4, v7, :cond_5

    .line 123
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mFirstShotY:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 124
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mFirstShotY:I

    .line 126
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/policy/OemThreePointersGesturesListener;->pauseDeliverPointer()V

    .line 129
    :cond_5
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mMaxNumPointers:I

    iget v5, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    if-ge v4, v5, :cond_6

    .line 130
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    iput v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mMaxNumPointers:I

    .line 133
    .end local v3    # "index":I
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 135
    .local v0, "NI":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_7

    .line 136
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mMaxNumPointers:I

    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/policy/OemThreePointersGesturesListener;->recordPointers(Landroid/view/MotionEvent;II)V

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 139
    :cond_7
    if-eq v1, v8, :cond_8

    if-eq v1, v7, :cond_8

    and-int/lit16 v4, v1, 0xff

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 142
    :cond_8
    and-int v4, v1, v10

    shr-int/lit8 v3, v4, 0x8

    .line 145
    .restart local v3    # "index":I
    if-eq v1, v8, :cond_9

    if-ne v1, v7, :cond_a

    .line 147
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/policy/OemThreePointersGesturesListener;->resumeDeliverPointer()V

    .line 148
    iput-boolean v6, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurDown:Z

    .line 149
    iput v6, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    goto :goto_0

    .line 152
    :cond_a
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    if-ne v4, v7, :cond_b

    .line 154
    invoke-direct {p0}, Lcom/android/server/policy/OemThreePointersGesturesListener;->shouldShot()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 155
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 159
    :cond_b
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    .line 160
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 161
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 162
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0
.end method

.method public pauseDeliverPointer()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 335
    sget-boolean v0, Lcom/android/server/policy/OemThreePointersGesturesListener;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 336
    const-string v0, "OemGestures"

    const-string v1, "pauseDeliverPointer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 343
    :cond_2
    return-void
.end method

.method public resumeDeliverPointer()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 347
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 353
    :cond_1
    return-void
.end method

.method public setScreenShotEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mIsShotScreenEnable:Z

    .line 332
    return-void
.end method
