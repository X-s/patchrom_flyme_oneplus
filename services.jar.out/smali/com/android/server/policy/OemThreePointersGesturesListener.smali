.class public Lcom/android/server/policy/OemThreePointersGesturesListener;
.super Ljava/lang/Object;
.source "OemThreePointersGesturesListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/OemThreePointersGesturesListener$XComparator;,
        Lcom/android/server/policy/OemThreePointersGesturesListener$YComparator;
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

.field private mCurrentUserId:I

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
.method static synthetic -get0(Lcom/android/server/policy/OemThreePointersGesturesListener;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurrentUserId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/OemThreePointersGesturesListener;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurrentUserId:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/policy/OemThreePointersGesturesListener;->DEBUG:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    .line 60
    iput-boolean v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mIsShotScreenEnable:Z

    .line 62
    iput v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mFirstShotY:I

    .line 66
    iput v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenHeight:I

    .line 67
    iput v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenWidth:I

    .line 72
    iput v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurrentUserId:I

    .line 197
    iput v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenLength_1_3:I

    .line 198
    iput v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenWidth_1_3:I

    .line 74
    iput-object p1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 77
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 78
    .local v1, "wm":Landroid/view/WindowManager;
    const-string/jumbo v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mActivityManager:Landroid/app/ActivityManager;

    .line 79
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 80
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenLength_1_3:I

    .line 81
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenWidth_1_3:I

    .line 83
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenHeight:I

    .line 84
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenWidth:I

    .line 85
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/policy/OemThreePointersGesturesListener$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/OemThreePointersGesturesListener$1;-><init>(Lcom/android/server/policy/OemThreePointersGesturesListener;)V

    .line 92
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurrentUserId:I

    .line 73
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
    .line 97
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
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
    const/4 v7, 0x0

    .line 231
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ltz v5, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 232
    :cond_0
    return v7

    .line 234
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 235
    .local v4, "length":I
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v2, v6, v5

    .line 236
    .local v2, "deltX":I
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int v3, v6, v5

    .line 237
    .local v3, "deltY":I
    if-nez v2, :cond_3

    .line 238
    if-ltz v3, :cond_2

    .line 239
    const/16 v5, 0x5a

    return v5

    .line 241
    :cond_2
    const/16 v5, -0x5a

    return v5

    .line 244
    :cond_3
    int-to-double v6, v3

    int-to-double v8, v2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 245
    .local v0, "angle":D
    if-gez v2, :cond_4

    .line 246
    const-wide v6, 0x4066800000000000L    # 180.0

    add-double/2addr v0, v6

    .line 248
    :cond_4
    double-to-int v5, v0

    return v5
.end method

.method private getDeltaAngle(II)I
    .locals 2
    .param p1, "angle0"    # I
    .param p2, "angle1"    # I

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "deltaAngle":I
    if-le p1, p2, :cond_2

    .line 254
    sub-int v0, p1, p2

    .line 258
    :cond_0
    :goto_0
    const/16 v1, 0xb4

    if-le v0, v1, :cond_1

    .line 259
    rsub-int v0, v0, 0x168

    .line 261
    :cond_1
    return v0

    .line 255
    :cond_2
    if-ge p1, p2, :cond_0

    .line 256
    sub-int v0, p2, p1

    goto :goto_0
.end method

.method private getMaxDeltaAngle()I
    .locals 8

    .prologue
    .line 265
    iget-object v7, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getAngle(Ljava/util/ArrayList;)I

    move-result v0

    .line 266
    .local v0, "angle0":I
    iget-object v7, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getAngle(Ljava/util/ArrayList;)I

    move-result v1

    .line 267
    .local v1, "angle1":I
    iget-object v7, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getAngle(Ljava/util/ArrayList;)I

    move-result v2

    .line 269
    .local v2, "angle2":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getDeltaAngle(II)I

    move-result v3

    .line 270
    .local v3, "deltAngle0":I
    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getDeltaAngle(II)I

    move-result v4

    .line 271
    .local v4, "deltAngle1":I
    invoke-direct {p0, v0, v2}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getDeltaAngle(II)I

    move-result v5

    .line 273
    .local v5, "deltAngle2":I
    if-le v3, v4, :cond_0

    move v6, v3

    .line 274
    .local v6, "maxDeltaAngle":I
    :goto_0
    if-le v6, v5, :cond_1

    .line 276
    :goto_1
    return v6

    .end local v6    # "maxDeltaAngle":I
    :cond_0
    move v6, v4

    .line 273
    goto :goto_0

    .restart local v6    # "maxDeltaAngle":I
    :cond_1
    move v6, v5

    .line 274
    goto :goto_1
.end method

.method private getScreenHeight_1_3()I
    .locals 2

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 190
    .local v0, "orient":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 191
    iget v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenWidth_1_3:I

    return v1

    .line 193
    :cond_0
    iget v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenLength_1_3:I

    return v1
.end method

.method private getScreenWidth_1_3()I
    .locals 2

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 181
    .local v0, "orient":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 182
    iget v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenLength_1_3:I

    return v1

    .line 184
    :cond_0
    iget v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenWidth_1_3:I

    return v1
.end method

.method private recordPointers(Landroid/view/MotionEvent;II)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointIndex"    # I
    .param p3, "maxNumPointers"    # I

    .prologue
    const/16 v4, 0xc8

    const/4 v3, 0x0

    .line 201
    const/4 v2, 0x3

    if-ne p3, v2, :cond_1

    .line 202
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 203
    .local v1, "pointTemp":Landroid/graphics/Point;
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 204
    .local v0, "pointId":I
    if-nez v0, :cond_2

    .line 205
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 206
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 207
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 208
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .end local v0    # "pointId":I
    .end local v1    # "pointTemp":Landroid/graphics/Point;
    :cond_1
    :goto_0
    return-void

    .line 212
    .restart local v0    # "pointId":I
    .restart local v1    # "pointTemp":Landroid/graphics/Point;
    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 213
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 214
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 215
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 216
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 218
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 220
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 221
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 222
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_5

    .line 223
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 225
    :cond_5
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private shouldShot()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 281
    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 282
    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 283
    .local v2, "last2":I
    add-int/lit8 v1, v2, -0x5

    .line 284
    .local v1, "last1":I
    if-lez v1, :cond_1

    .line 285
    :goto_0
    if-lez v2, :cond_2

    .line 286
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iput-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mLast1ShotY:Landroid/graphics/Point;

    .line 287
    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iput-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mLast2ShotY:Landroid/graphics/Point;

    .line 290
    .end local v1    # "last1":I
    .end local v2    # "last2":I
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getMaxDeltaAngle()I

    move-result v0

    .line 291
    .local v0, "deltAngle":I
    const/16 v3, 0x1e

    if-lt v0, v3, :cond_3

    .line 292
    return v4

    .line 284
    .end local v0    # "deltAngle":I
    .restart local v1    # "last1":I
    .restart local v2    # "last2":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 285
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 295
    .end local v1    # "last1":I
    .end local v2    # "last2":I
    .restart local v0    # "deltAngle":I
    :cond_3
    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/policy/OemThreePointersGesturesListener;->shouldShotByPoints(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/policy/OemThreePointersGesturesListener;->shouldShotByPoints(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 296
    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/policy/OemThreePointersGesturesListener;->shouldShotByPoints(Ljava/util/ArrayList;)Z

    move-result v3

    .line 295
    :goto_2
    return v3

    :cond_4
    move v3, v4

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

    .line 300
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ltz v8, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 301
    :cond_0
    return v7

    .line 305
    :cond_1
    new-instance v6, Lcom/android/server/policy/OemThreePointersGesturesListener$YComparator;

    invoke-direct {v6, p0}, Lcom/android/server/policy/OemThreePointersGesturesListener$YComparator;-><init>(Lcom/android/server/policy/OemThreePointersGesturesListener;)V

    .line 306
    .local v6, "yComparator":Lcom/android/server/policy/OemThreePointersGesturesListener$YComparator;
    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 307
    invoke-static {p1, v6}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 308
    .local v2, "maxPCY":Landroid/graphics/Point;
    invoke-static {p1, v6}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 309
    .local v4, "minPCY":Landroid/graphics/Point;
    sget-boolean v8, Lcom/android/server/policy/OemThreePointersGesturesListener;->DEBUG:Z

    if-eqz v8, :cond_2

    .line 310
    const-string/jumbo v8, "OemGestures"

    .line 311
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " maxPCY.y"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " minPCY.y"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "pointers"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 310
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_2
    new-instance v5, Lcom/android/server/policy/OemThreePointersGesturesListener$XComparator;

    invoke-direct {v5, p0}, Lcom/android/server/policy/OemThreePointersGesturesListener$XComparator;-><init>(Lcom/android/server/policy/OemThreePointersGesturesListener;)V

    .line 315
    .local v5, "xComparator":Lcom/android/server/policy/OemThreePointersGesturesListener$XComparator;
    invoke-static {p1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 316
    invoke-static {p1, v5}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 317
    .local v1, "maxPCX":Landroid/graphics/Point;
    invoke-static {p1, v5}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 318
    .local v3, "minPCX":Landroid/graphics/Point;
    sget-boolean v8, Lcom/android/server/policy/OemThreePointersGesturesListener;->DEBUG:Z

    if-eqz v8, :cond_3

    .line 319
    const-string/jumbo v8, "OemGestures"

    .line 320
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " maxPCX.x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " minPCX.x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "pointers"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 319
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_3
    const/4 v0, 0x0

    .line 324
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

    .line 325
    iget v8, v1, Landroid/graphics/Point;->x:I

    iget v9, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    .line 324
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 325
    invoke-direct {p0}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getScreenWidth_1_3()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    .line 324
    if-ge v8, v9, :cond_4

    const/4 v0, 0x1

    .line 326
    .local v0, "bResult":Z
    :goto_0
    return v0

    .local v0, "bResult":Z
    :cond_4
    move v0, v7

    .line 324
    goto :goto_0
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

    .line 107
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurrentUserId:I

    if-eqz v4, :cond_0

    .line 108
    return-void

    .line 110
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mIsShotScreenEnable:Z

    if-nez v4, :cond_1

    .line 111
    return-void

    .line 114
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 116
    .local v1, "action":I
    if-eqz v1, :cond_2

    .line 117
    and-int/lit16 v4, v1, 0xff

    if-ne v4, v9, :cond_6

    .line 118
    :cond_2
    and-int v4, v1, v10

    shr-int/lit8 v3, v4, 0x8

    .line 120
    .local v3, "index":I
    if-nez v1, :cond_3

    .line 121
    iput-boolean v8, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurDown:Z

    .line 122
    iput v6, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    .line 123
    iput v6, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mMaxNumPointers:I

    .line 126
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 127
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 128
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 131
    :cond_3
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    .line 134
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    if-ne v4, v7, :cond_5

    .line 135
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mFirstShotY:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 136
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mFirstShotY:I

    .line 138
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/policy/OemThreePointersGesturesListener;->pauseDeliverPointer()V

    .line 141
    :cond_5
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mMaxNumPointers:I

    iget v5, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    if-ge v4, v5, :cond_6

    .line 142
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    iput v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mMaxNumPointers:I

    .line 145
    .end local v3    # "index":I
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 147
    .local v0, "NI":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_7

    .line 148
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mMaxNumPointers:I

    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/policy/OemThreePointersGesturesListener;->recordPointers(Landroid/view/MotionEvent;II)V

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_7
    if-eq v1, v8, :cond_8

    .line 152
    if-ne v1, v7, :cond_b

    .line 154
    :cond_8
    :goto_1
    and-int v4, v1, v10

    shr-int/lit8 v3, v4, 0x8

    .line 157
    .restart local v3    # "index":I
    if-eq v1, v8, :cond_9

    .line 158
    if-ne v1, v7, :cond_c

    .line 159
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/policy/OemThreePointersGesturesListener;->resumeDeliverPointer()V

    .line 160
    iput-boolean v6, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurDown:Z

    .line 161
    iput v6, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    .line 104
    .end local v3    # "index":I
    :cond_a
    :goto_2
    return-void

    .line 153
    :cond_b
    and-int/lit16 v4, v1, 0xff

    const/4 v5, 0x6

    if-ne v4, v5, :cond_a

    goto :goto_1

    .line 164
    .restart local v3    # "index":I
    :cond_c
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    if-ne v4, v7, :cond_d

    .line 166
    invoke-direct {p0}, Lcom/android/server/policy/OemThreePointersGesturesListener;->shouldShot()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 167
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 171
    :cond_d
    iget v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    .line 172
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 173
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 174
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_2
.end method

.method public pauseDeliverPointer()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 347
    sget-boolean v0, Lcom/android/server/policy/OemThreePointersGesturesListener;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 348
    const-string/jumbo v0, "OemGestures"

    const-string/jumbo v1, "pauseDeliverPointer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 346
    :cond_2
    return-void
.end method

.method public resumeDeliverPointer()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 359
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 357
    :cond_1
    return-void
.end method

.method public setScreenShotEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mIsShotScreenEnable:Z

    .line 342
    return-void
.end method
