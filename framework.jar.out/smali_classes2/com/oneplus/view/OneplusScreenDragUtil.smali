.class public Lcom/oneplus/view/OneplusScreenDragUtil;
.super Ljava/lang/Object;
.source "OneplusScreenDragUtil.java"


# static fields
.field public static DRAG_STATE_HOLD:I = 0x0

.field public static DRAG_STATE_NORMAL:I = 0x0

.field public static DRAG_STATE_OFFSET:I = 0x0

.field private static final FINISH_HANDLED:I = 0x1

.field private static final FORWARD:I = 0x0

.field private static final PERSIST_KEY:Ljava/lang/String; = "persist.sys.oneplus.screendrag"

.field private static final PERSIST_KEY_METRICS:Ljava/lang/String; = "persist.sys.oneplus.displaymetrics"

.field private static final PERSIST_KEY_STATE:Ljava/lang/String; = "persist.sys.oneplus.dragstate"

.field private static SPLIT_PROP:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "OneplusScreenDragUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/oneplus/view/OneplusScreenDragUtil;->DRAG_STATE_NORMAL:I

    .line 21
    const/4 v0, 0x1

    sput v0, Lcom/oneplus/view/OneplusScreenDragUtil;->DRAG_STATE_HOLD:I

    .line 22
    const/4 v0, 0x2

    sput v0, Lcom/oneplus/view/OneplusScreenDragUtil;->DRAG_STATE_OFFSET:I

    .line 28
    const-string v0, ","

    sput-object v0, Lcom/oneplus/view/OneplusScreenDragUtil;->SPLIT_PROP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHeight()I
    .locals 4

    .prologue
    .line 76
    const-string v2, "persist.sys.oneplus.displaymetrics"

    const-string v3, "0,0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "prop":Ljava/lang/String;
    sget-object v2, Lcom/oneplus/view/OneplusScreenDragUtil;->SPLIT_PROP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "strProps":[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static getOffsetPosX(F)F
    .locals 4
    .param p0, "x"    # F

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "offsetPosX":F
    invoke-static {}, Lcom/oneplus/view/OneplusScreenDragUtil;->getOffsetX()I

    move-result v1

    if-nez v1, :cond_0

    .line 117
    invoke-static {}, Lcom/oneplus/view/OneplusScreenDragUtil;->getScale()F

    move-result v1

    div-float v0, p0, v1

    .line 121
    :goto_0
    return v0

    .line 119
    :cond_0
    invoke-static {}, Lcom/oneplus/view/OneplusScreenDragUtil;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/oneplus/view/OneplusScreenDragUtil;->getScale()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float v1, p0, v1

    invoke-static {}, Lcom/oneplus/view/OneplusScreenDragUtil;->getScale()F

    move-result v2

    div-float v0, v1, v2

    goto :goto_0
.end method

.method public static getOffsetPosY(F)F
    .locals 4
    .param p0, "y"    # F

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "offsetPosY":F
    invoke-static {}, Lcom/oneplus/view/OneplusScreenDragUtil;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/oneplus/view/OneplusScreenDragUtil;->getScale()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float v1, p0, v1

    invoke-static {}, Lcom/oneplus/view/OneplusScreenDragUtil;->getScale()F

    move-result v2

    div-float v0, v1, v2

    .line 127
    return v0
.end method

.method public static getOffsetX()I
    .locals 4

    .prologue
    .line 48
    const-string v2, "persist.sys.oneplus.screendrag"

    const-string v3, "0,0,0,0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "prop":Ljava/lang/String;
    sget-object v2, Lcom/oneplus/view/OneplusScreenDragUtil;->SPLIT_PROP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "strProps":[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static getOffsetY()I
    .locals 4

    .prologue
    .line 55
    const-string v2, "persist.sys.oneplus.screendrag"

    const-string v3, "0,0,0,0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "prop":Ljava/lang/String;
    sget-object v2, Lcom/oneplus/view/OneplusScreenDragUtil;->SPLIT_PROP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "strProps":[Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static getScale()F
    .locals 4

    .prologue
    .line 62
    const-string v2, "persist.sys.oneplus.screendrag"

    const-string v3, "0,0,0,0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "prop":Ljava/lang/String;
    sget-object v2, Lcom/oneplus/view/OneplusScreenDragUtil;->SPLIT_PROP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "strProps":[Ljava/lang/String;
    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    return v2
.end method

.method public static getScreenDragState()I
    .locals 4

    .prologue
    .line 41
    const-string v2, "persist.sys.oneplus.screendrag"

    const-string v3, "0,0,0,0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "prop":Ljava/lang/String;
    sget-object v2, Lcom/oneplus/view/OneplusScreenDragUtil;->SPLIT_PROP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "strProps":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static getWidth()I
    .locals 4

    .prologue
    .line 69
    const-string v2, "persist.sys.oneplus.displaymetrics"

    const-string v3, "0,0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "prop":Ljava/lang/String;
    sget-object v2, Lcom/oneplus/view/OneplusScreenDragUtil;->SPLIT_PROP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "strProps":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static isDragState()Z
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcom/oneplus/view/OneplusScreenDragUtil;->getScreenDragState()I

    move-result v0

    .line 87
    .local v0, "state":I
    sget v1, Lcom/oneplus/view/OneplusScreenDragUtil;->DRAG_STATE_HOLD:I

    if-eq v1, v0, :cond_0

    sget v1, Lcom/oneplus/view/OneplusScreenDragUtil;->DRAG_STATE_OFFSET:I

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHoldState()Z
    .locals 2

    .prologue
    .line 92
    sget v0, Lcom/oneplus/view/OneplusScreenDragUtil;->DRAG_STATE_HOLD:I

    invoke-static {}, Lcom/oneplus/view/OneplusScreenDragUtil;->getScreenDragState()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNormalState()Z
    .locals 2

    .prologue
    .line 82
    sget v0, Lcom/oneplus/view/OneplusScreenDragUtil;->DRAG_STATE_NORMAL:I

    invoke-static {}, Lcom/oneplus/view/OneplusScreenDragUtil;->getScreenDragState()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOffsetState()Z
    .locals 2

    .prologue
    .line 96
    sget v0, Lcom/oneplus/view/OneplusScreenDragUtil;->DRAG_STATE_OFFSET:I

    invoke-static {}, Lcom/oneplus/view/OneplusScreenDragUtil;->getScreenDragState()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShowWallpaper(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 2
    .param p0, "windowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 100
    invoke-static {}, Lcom/oneplus/view/OneplusScreenDragUtil;->isDragState()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x63

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWallpaperWin(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 2
    .param p0, "windowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 104
    invoke-static {}, Lcom/oneplus/view/OneplusScreenDragUtil;->isDragState()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resetState()V
    .locals 2

    .prologue
    .line 109
    sget v0, Lcom/oneplus/view/OneplusScreenDragUtil;->DRAG_STATE_NORMAL:I

    invoke-static {v0}, Lcom/oneplus/view/OneplusScreenDragUtil;->setScreenDragState(I)V

    .line 110
    const-string v0, "persist.sys.oneplus.dragstate"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "persist.sys.oneplus.displaymetrics"

    const-string v1, "0,0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static screenOffsetDeliverPointer(Landroid/view/MotionEvent;Landroid/view/View;)I
    .locals 4
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 137
    move-object v0, p0

    .line 138
    .local v0, "newEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getXOffset()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Lcom/oneplus/view/OneplusScreenDragUtil;->getOffsetPosX(F)F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getXOffset()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getYOffset()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Lcom/oneplus/view/OneplusScreenDragUtil;->getOffsetPosY(F)F

    move-result v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getYOffset()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const/4 v1, 0x1

    .line 143
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setEventLocation(Landroid/view/MotionEvent;)V
    .locals 4
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 131
    move-object v0, p0

    .line 132
    .local v0, "newEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getXOffset()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Lcom/oneplus/view/OneplusScreenDragUtil;->getOffsetPosX(F)F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getXOffset()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getYOffset()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Lcom/oneplus/view/OneplusScreenDragUtil;->getOffsetPosY(F)F

    move-result v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getYOffset()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 134
    return-void
.end method

.method public static setScreenDragState(I)V
    .locals 3
    .param p0, "dragState"    # I

    .prologue
    .line 37
    const-string v0, "persist.sys.oneplus.screendrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",0,0,0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method
