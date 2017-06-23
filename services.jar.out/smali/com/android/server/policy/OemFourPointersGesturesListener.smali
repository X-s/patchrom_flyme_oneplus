.class public Lcom/android/server/policy/OemFourPointersGesturesListener;
.super Ljava/lang/Object;
.source "OemFourPointersGesturesListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/OemFourPointersGesturesListener$YComparator;,
        Lcom/android/server/policy/OemFourPointersGesturesListener$XComparator;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MAX_POINT_NUM:I = 0xc8

.field private static final MSG_OEM_TAKE_OPBUGREPORT:I = 0x6

.field private static final SCREEN_SHOT_PRECISE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "OemFourPointersGesturesListener"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private mFirstShotY:I

.field private mHandler:Landroid/os/Handler;

.field private mIsOPBugreportEnable:Z

.field private mLast1ShotY:Landroid/graphics/Point;

.field private mLast2ShotY:Landroid/graphics/Point;

.field private mLast3ShotY:Landroid/graphics/Point;

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

.field private mPointers3:Ljava/util/ArrayList;
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

.field mScreenLength_1_4:I

.field private mScreenWidth:I

.field mScreenWidth_1_4:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/policy/OemFourPointersGesturesListener;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, -0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers3:Ljava/util/ArrayList;

    .line 56
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mIsOPBugreportEnable:Z

    .line 58
    iput v3, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mFirstShotY:I

    .line 63
    iput v3, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mScreenHeight:I

    .line 64
    iput v3, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mScreenWidth:I

    .line 181
    iput v3, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mScreenLength_1_4:I

    .line 182
    iput v3, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mScreenWidth_1_4:I

    .line 69
    const-string v2, "OemFourPointersGesturesListener"

    const-string v3, "OemFourPointersGesturesListener IN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iput-object p1, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 73
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 74
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 75
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mScreenLength_1_4:I

    .line 76
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mScreenWidth_1_4:I

    .line 78
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mScreenHeight:I

    .line 79
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mScreenWidth:I

    .line 80
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
    .line 83
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 84
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

    .line 86
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

    .line 222
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ltz v5, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v5, v6

    .line 239
    :goto_0
    return v5

    .line 225
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 226
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

    .line 227
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

    .line 228
    .local v3, "deltY":I
    if-nez v2, :cond_3

    .line 229
    if-ltz v3, :cond_2

    .line 230
    const/16 v5, 0x5a

    goto :goto_0

    .line 232
    :cond_2
    const/16 v5, -0x5a

    goto :goto_0

    .line 235
    :cond_3
    int-to-double v6, v3

    int-to-double v8, v2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 236
    .local v0, "angle":D
    if-gez v2, :cond_4

    .line 237
    const-wide v6, 0x4066800000000000L    # 180.0

    add-double/2addr v0, v6

    .line 239
    :cond_4
    double-to-int v5, v0

    goto :goto_0
.end method

.method private getDeltaAngle(II)I
    .locals 2
    .param p1, "angle0"    # I
    .param p2, "angle1"    # I

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "deltaAngle":I
    if-le p1, p2, :cond_2

    .line 245
    sub-int v0, p1, p2

    .line 249
    :cond_0
    :goto_0
    const/16 v1, 0xb4

    if-le v0, v1, :cond_1

    .line 250
    rsub-int v0, v0, 0x168

    .line 252
    :cond_1
    return v0

    .line 246
    :cond_2
    if-ge p1, p2, :cond_0

    .line 247
    sub-int v0, p2, p1

    goto :goto_0
.end method

.method private getMaxDeltaAngle()I
    .locals 12

    .prologue
    .line 256
    iget-object v11, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-direct {p0, v11}, Lcom/android/server/policy/OemFourPointersGesturesListener;->getAngle(Ljava/util/ArrayList;)I

    move-result v0

    .line 257
    .local v0, "angle0":I
    iget-object v11, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-direct {p0, v11}, Lcom/android/server/policy/OemFourPointersGesturesListener;->getAngle(Ljava/util/ArrayList;)I

    move-result v1

    .line 258
    .local v1, "angle1":I
    iget-object v11, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-direct {p0, v11}, Lcom/android/server/policy/OemFourPointersGesturesListener;->getAngle(Ljava/util/ArrayList;)I

    move-result v2

    .line 259
    .local v2, "angle2":I
    iget-object v11, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers3:Ljava/util/ArrayList;

    invoke-direct {p0, v11}, Lcom/android/server/policy/OemFourPointersGesturesListener;->getAngle(Ljava/util/ArrayList;)I

    move-result v3

    .line 261
    .local v3, "angle3":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/OemFourPointersGesturesListener;->getDeltaAngle(II)I

    move-result v4

    .line 262
    .local v4, "deltAngle0":I
    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/OemFourPointersGesturesListener;->getDeltaAngle(II)I

    move-result v5

    .line 263
    .local v5, "deltAngle1":I
    invoke-direct {p0, v0, v2}, Lcom/android/server/policy/OemFourPointersGesturesListener;->getDeltaAngle(II)I

    move-result v6

    .line 265
    .local v6, "deltAngle2":I
    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/OemFourPointersGesturesListener;->getDeltaAngle(II)I

    move-result v7

    .line 266
    .local v7, "deltAngle3":I
    invoke-direct {p0, v1, v3}, Lcom/android/server/policy/OemFourPointersGesturesListener;->getDeltaAngle(II)I

    move-result v8

    .line 267
    .local v8, "deltAngle4":I
    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/OemFourPointersGesturesListener;->getDeltaAngle(II)I

    move-result v9

    .line 269
    .local v9, "deltAngle5":I
    if-le v4, v5, :cond_0

    move v10, v4

    .line 270
    .local v10, "maxDeltaAngle":I
    :goto_0
    if-le v10, v6, :cond_1

    .line 272
    :goto_1
    if-le v10, v7, :cond_2

    .line 273
    :goto_2
    if-le v10, v8, :cond_3

    .line 274
    :goto_3
    if-le v10, v9, :cond_4

    .line 276
    :goto_4
    return v10

    .end local v10    # "maxDeltaAngle":I
    :cond_0
    move v10, v5

    .line 269
    goto :goto_0

    .restart local v10    # "maxDeltaAngle":I
    :cond_1
    move v10, v6

    .line 270
    goto :goto_1

    :cond_2
    move v10, v7

    .line 272
    goto :goto_2

    :cond_3
    move v10, v8

    .line 273
    goto :goto_3

    :cond_4
    move v10, v9

    .line 274
    goto :goto_4
.end method

.method private getScreenHeight_1_4()I
    .locals 2

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 174
    .local v0, "orient":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 175
    iget v1, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mScreenWidth_1_4:I

    .line 177
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mScreenLength_1_4:I

    goto :goto_0
.end method

.method private getScreenWidth_1_4()I
    .locals 2

    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 165
    .local v0, "orient":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 166
    iget v1, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mScreenLength_1_4:I

    .line 168
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mScreenWidth_1_4:I

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

    .line 185
    const/4 v2, 0x4

    if-ne p3, v2, :cond_1

    .line 186
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 187
    .local v1, "pointTemp":Landroid/graphics/Point;
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 188
    .local v0, "pointId":I
    if-nez v0, :cond_2

    .line 189
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 190
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 191
    iget-object v2, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 192
    iget-object v2, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .end local v0    # "pointId":I
    .end local v1    # "pointTemp":Landroid/graphics/Point;
    :cond_1
    :goto_0
    return-void

    .line 196
    .restart local v0    # "pointId":I
    .restart local v1    # "pointTemp":Landroid/graphics/Point;
    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 197
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 198
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 199
    iget-object v2, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 200
    iget-object v2, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 202
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 204
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 205
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 206
    iget-object v2, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_5

    .line 207
    iget-object v2, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 209
    :cond_5
    iget-object v2, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_6
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 211
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 212
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 213
    iget-object v2, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers3:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_7

    .line 214
    iget-object v2, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers3:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 216
    :cond_7
    iget-object v2, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers3:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private shouldShot()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 281
    iget-object v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 282
    iget-object v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 283
    .local v3, "last3":I
    iget-object v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x2

    .line 284
    .local v2, "last2":I
    iget-object v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x3

    .line 285
    .local v1, "last1":I
    if-lez v1, :cond_2

    .line 286
    :goto_0
    if-lez v2, :cond_3

    .line 287
    :goto_1
    if-lez v3, :cond_4

    .line 288
    :goto_2
    iget-object v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iput-object v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mLast1ShotY:Landroid/graphics/Point;

    .line 289
    iget-object v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iput-object v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mLast2ShotY:Landroid/graphics/Point;

    .line 290
    iget-object v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iput-object v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mLast3ShotY:Landroid/graphics/Point;

    .line 293
    .end local v1    # "last1":I
    .end local v2    # "last2":I
    .end local v3    # "last3":I
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/OemFourPointersGesturesListener;->getMaxDeltaAngle()I

    move-result v0

    .line 294
    .local v0, "deltAngle":I
    const/16 v4, 0x1e

    if-lt v0, v4, :cond_5

    .line 298
    :cond_1
    :goto_3
    return v5

    .end local v0    # "deltAngle":I
    .restart local v1    # "last1":I
    .restart local v2    # "last2":I
    .restart local v3    # "last3":I
    :cond_2
    move v1, v5

    .line 285
    goto :goto_0

    :cond_3
    move v2, v5

    .line 286
    goto :goto_1

    :cond_4
    move v3, v5

    .line 287
    goto :goto_2

    .line 298
    .end local v1    # "last1":I
    .end local v2    # "last2":I
    .end local v3    # "last3":I
    .restart local v0    # "deltAngle":I
    :cond_5
    iget-object v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/android/server/policy/OemFourPointersGesturesListener;->shouldShotByPoints(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/android/server/policy/OemFourPointersGesturesListener;->shouldShotByPoints(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/android/server/policy/OemFourPointersGesturesListener;->shouldShotByPoints(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers3:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/android/server/policy/OemFourPointersGesturesListener;->shouldShotByPoints(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    goto :goto_3
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

    .line 303
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ltz v8, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move v0, v7

    .line 329
    :goto_0
    return v0

    .line 308
    :cond_1
    new-instance v6, Lcom/android/server/policy/OemFourPointersGesturesListener$YComparator;

    invoke-direct {v6, p0}, Lcom/android/server/policy/OemFourPointersGesturesListener$YComparator;-><init>(Lcom/android/server/policy/OemFourPointersGesturesListener;)V

    .line 309
    .local v6, "yComparator":Lcom/android/server/policy/OemFourPointersGesturesListener$YComparator;
    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 310
    invoke-static {p1, v6}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 311
    .local v2, "maxPCY":Landroid/graphics/Point;
    invoke-static {p1, v6}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 312
    .local v4, "minPCY":Landroid/graphics/Point;
    sget-boolean v8, Lcom/android/server/policy/OemFourPointersGesturesListener;->DEBUG:Z

    if-eqz v8, :cond_2

    .line 313
    const-string v8, "OemFourPointersGesturesListener"

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

    .line 317
    :cond_2
    new-instance v5, Lcom/android/server/policy/OemFourPointersGesturesListener$XComparator;

    invoke-direct {v5, p0}, Lcom/android/server/policy/OemFourPointersGesturesListener$XComparator;-><init>(Lcom/android/server/policy/OemFourPointersGesturesListener;)V

    .line 318
    .local v5, "xComparator":Lcom/android/server/policy/OemFourPointersGesturesListener$XComparator;
    invoke-static {p1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 319
    invoke-static {p1, v5}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 320
    .local v1, "maxPCX":Landroid/graphics/Point;
    invoke-static {p1, v5}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 321
    .local v3, "minPCX":Landroid/graphics/Point;
    sget-boolean v8, Lcom/android/server/policy/OemFourPointersGesturesListener;->DEBUG:Z

    if-eqz v8, :cond_3

    .line 322
    const-string v8, "OemFourPointersGesturesListener"

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

    .line 326
    :cond_3
    const/4 v0, 0x0

    .line 327
    .local v0, "bResult":Z
    iget v8, v2, Landroid/graphics/Point;->y:I

    iget v9, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-direct {p0}, Lcom/android/server/policy/OemFourPointersGesturesListener;->getScreenHeight_1_4()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    if-le v8, v9, :cond_4

    iget v8, v1, Landroid/graphics/Point;->x:I

    iget v9, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-direct {p0}, Lcom/android/server/policy/OemFourPointersGesturesListener;->getScreenWidth_1_4()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_4

    const/4 v0, 0x1

    .line 329
    :goto_1
    goto/16 :goto_0

    :cond_4
    move v0, v7

    .line 327
    goto :goto_1
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 92
    iget-boolean v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mIsOPBugreportEnable:Z

    if-nez v4, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 98
    .local v1, "action":I
    if-eqz v1, :cond_2

    and-int/lit16 v4, v1, 0xff

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5

    .line 100
    :cond_2
    const v4, 0xff00

    and-int/2addr v4, v1

    shr-int/lit8 v3, v4, 0x8

    .line 102
    .local v3, "index":I
    if-nez v1, :cond_3

    .line 103
    iput-boolean v7, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mCurDown:Z

    .line 104
    iput v6, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mCurNumPointers:I

    .line 105
    iput v6, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mMaxNumPointers:I

    .line 108
    iget-object v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 109
    iget-object v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 110
    iget-object v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 111
    iget-object v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers3:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 114
    :cond_3
    iget v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mCurNumPointers:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mCurNumPointers:I

    .line 117
    iget v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mCurNumPointers:I

    if-ne v4, v9, :cond_4

    .line 118
    iget v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mFirstShotY:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 119
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mFirstShotY:I

    .line 124
    :cond_4
    iget v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mMaxNumPointers:I

    iget v5, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mCurNumPointers:I

    if-ge v4, v5, :cond_5

    .line 125
    iget v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mCurNumPointers:I

    iput v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mMaxNumPointers:I

    .line 128
    .end local v3    # "index":I
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 130
    .local v0, "NI":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_6

    .line 131
    iget v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mMaxNumPointers:I

    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/policy/OemFourPointersGesturesListener;->recordPointers(Landroid/view/MotionEvent;II)V

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 134
    :cond_6
    if-eq v1, v7, :cond_7

    if-eq v1, v8, :cond_7

    and-int/lit16 v4, v1, 0xff

    if-ne v4, v10, :cond_0

    .line 137
    :cond_7
    const v4, 0xff00

    and-int/2addr v4, v1

    shr-int/lit8 v3, v4, 0x8

    .line 140
    .restart local v3    # "index":I
    if-eq v1, v7, :cond_8

    if-ne v1, v8, :cond_9

    .line 143
    :cond_8
    iput-boolean v6, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mCurDown:Z

    .line 144
    iput v6, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mCurNumPointers:I

    goto :goto_0

    .line 147
    :cond_9
    iget v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mCurNumPointers:I

    if-ne v4, v9, :cond_a

    .line 149
    invoke-direct {p0}, Lcom/android/server/policy/OemFourPointersGesturesListener;->shouldShot()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 150
    iget-object v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 154
    :cond_a
    iget v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mCurNumPointers:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mCurNumPointers:I

    .line 155
    iget-object v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 156
    iget-object v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 157
    iget-object v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 158
    iget-object v4, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mPointers3:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0
.end method

.method public setOPBugreporttEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 346
    iput-boolean p1, p0, Lcom/android/server/policy/OemFourPointersGesturesListener;->mIsOPBugreportEnable:Z

    .line 347
    return-void
.end method
