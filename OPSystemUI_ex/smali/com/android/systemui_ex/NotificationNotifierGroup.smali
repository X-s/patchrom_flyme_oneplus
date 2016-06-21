.class public Lcom/android/systemui_ex/NotificationNotifierGroup;
.super Landroid/widget/ImageView;
.source "NotificationNotifierGroup.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/StatusbarColorObserver;


# instance fields
.field private final mDarkColor:I

.field private mIsUsingDarkColor:Z

.field private mNumber:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mWhiteColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui_ex/NotificationNotifierGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui_ex/NotificationNotifierGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput v2, p0, Lcom/android/systemui_ex/NotificationNotifierGroup;->mNumber:I

    .line 35
    iput-boolean v2, p0, Lcom/android/systemui_ex/NotificationNotifierGroup;->mIsUsingDarkColor:Z

    .line 47
    const/4 v2, 0x0

    invoke-virtual {p0, v4, v2}, Lcom/android/systemui_ex/NotificationNotifierGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 49
    .local v1, "res":Landroid/content/res/Resources;
    const/high16 v2, -0x1000000

    const v3, 0x7f08001d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui_ex/NotificationNotifierGroup;->mWhiteColor:I

    .line 50
    const v2, 0x7f08001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/NotificationNotifierGroup;->mDarkColor:I

    .line 52
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui_ex/NotificationNotifierGroup;->mPaint:Landroid/graphics/Paint;

    .line 53
    iget-object v2, p0, Lcom/android/systemui_ex/NotificationNotifierGroup;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 54
    iget-object v2, p0, Lcom/android/systemui_ex/NotificationNotifierGroup;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    iget-object v2, p0, Lcom/android/systemui_ex/NotificationNotifierGroup;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui_ex/NotificationNotifierGroup;->mTextPaint:Landroid/graphics/Paint;

    .line 58
    const-string v2, "century-gothic-regular"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 59
    .local v0, "font":Landroid/graphics/Typeface;
    iget-object v2, p0, Lcom/android/systemui_ex/NotificationNotifierGroup;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 60
    iget-object v2, p0, Lcom/android/systemui_ex/NotificationNotifierGroup;->mTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 61
    iget-object v2, p0, Lcom/android/systemui_ex/NotificationNotifierGroup;->mTextPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 62
    iget-object v2, p0, Lcom/android/systemui_ex/NotificationNotifierGroup;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41c80000    # 25.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 63
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 84
    iget v1, p0, Lcom/android/systemui_ex/NotificationNotifierGroup;->mNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "str":Ljava/lang/String;
    iget v1, p0, Lcom/android/systemui_ex/NotificationNotifierGroup;->mNumber:I

    const/16 v2, 0x63

    if-le v1, v2, :cond_0

    .line 86
    const-string v0, "99"

    .line 89
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui_ex/NotificationNotifierGroup;->mIsUsingDarkColor:Z

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/systemui_ex/NotificationNotifierGroup;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui_ex/NotificationNotifierGroup;->mDarkColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/NotificationNotifierGroup;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui_ex/NotificationNotifierGroup;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x41700000    # 15.0f

    iget-object v4, p0, Lcom/android/systemui_ex/NotificationNotifierGroup;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui_ex/NotificationNotifierGroup;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x42280000    # 42.0f

    iget-object v3, p0, Lcom/android/systemui_ex/NotificationNotifierGroup;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 97
    return-void

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/NotificationNotifierGroup;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui_ex/NotificationNotifierGroup;->mWhiteColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 68
    return-void
.end method

.method public onStatusbarColorChange(Z)V
    .locals 0
    .param p1, "isUsingDarkColor"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/systemui_ex/NotificationNotifierGroup;->mIsUsingDarkColor:Z

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui_ex/NotificationNotifierGroup;->postInvalidate()V

    .line 79
    return-void
.end method

.method public setNotificationNumber(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/systemui_ex/NotificationNotifierGroup;->mNumber:I

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui_ex/NotificationNotifierGroup;->postInvalidate()V

    .line 73
    return-void
.end method
