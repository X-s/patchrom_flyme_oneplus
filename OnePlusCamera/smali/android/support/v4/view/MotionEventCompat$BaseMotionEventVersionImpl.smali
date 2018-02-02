.class Landroid/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"

# interfaces
.implements Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MotionEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseMotionEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    if-eqz p2, :cond_0

    const/4 v0, -0x1

    .line 47
    return v0

    .line 45
    :cond_0
    return v0
.end method

.method public getPointerCount(Landroid/view/MotionEvent;)I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 73
    return v0
.end method

.method public getPointerId(Landroid/view/MotionEvent;I)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 51
    if-eqz p2, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Pre-Eclair does not support multiple pointers"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    return v0
.end method

.method public getX(Landroid/view/MotionEvent;I)F
    .locals 2

    .prologue
    .line 59
    if-eqz p2, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Pre-Eclair does not support multiple pointers"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method public getY(Landroid/view/MotionEvent;I)F
    .locals 2

    .prologue
    .line 66
    if-eqz p2, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Pre-Eclair does not support multiple pointers"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0
.end method
