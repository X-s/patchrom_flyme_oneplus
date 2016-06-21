.class public Lcom/android/systemui_ex/BatteryMeterView;
.super Landroid/widget/ImageView;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui_ex/DemoMode;
.implements Lcom/android/systemui_ex/statusbar/StatusbarColorObserver;
.implements Lcom/android/systemui_ex/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final WARNING_LEVEL:I

.field private mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

.field private final mBatteryPaint:Landroid/graphics/Paint;

.field private mBatteryShowPercentObserver:Landroid/database/ContentObserver;

.field private final mCriticalLevel:I

.field private mDarkBitmap:Landroid/graphics/Bitmap;

.field private mDarkBorderBitmap:Landroid/graphics/Bitmap;

.field private mDarkBorderDrawable:Landroid/graphics/drawable/VectorDrawable;

.field private final mDarkColor:I

.field private mDarkDrawable:Landroid/graphics/drawable/VectorDrawable;

.field private mDemoMode:Z

.field private mDemoTracker:Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;

.field private mHeight:I

.field private mIsUsingDarkColor:Z

.field private mPorterDuffDarkColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mPorterDuffWhiteColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field mShowPercent:Z

.field private final mTextPaint:Landroid/graphics/Paint;

.field mTracker:Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;

.field private final mWarningColor:I

.field private final mWarningTextPaint:Landroid/graphics/Paint;

.field private mWhiteBitmap:Landroid/graphics/Bitmap;

.field private mWhiteBorderBitmap:Landroid/graphics/Bitmap;

.field private mWhiteBorderDrawable:Landroid/graphics/drawable/VectorDrawable;

.field private final mWhiteColor:I

.field private mWhiteDrawable:Landroid/graphics/drawable/VectorDrawable;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/android/systemui_ex/BatteryMeterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui_ex/BatteryMeterView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui_ex/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui_ex/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v8, 0x7f020014

    const/high16 v7, 0x41c80000    # 25.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 149
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->WARNING_LEVEL:I

    .line 70
    iput-boolean v3, p0, Lcom/android/systemui_ex/BatteryMeterView;->mShowPercent:Z

    .line 86
    iput-object v6, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWhiteDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 87
    iput-object v6, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDarkDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 88
    iput-object v6, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWhiteBorderDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 89
    iput-object v6, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDarkBorderDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 91
    iput-object v6, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWhiteBitmap:Landroid/graphics/Bitmap;

    .line 92
    iput-object v6, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDarkBitmap:Landroid/graphics/Bitmap;

    .line 93
    iput-object v6, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWhiteBorderBitmap:Landroid/graphics/Bitmap;

    .line 94
    iput-object v6, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDarkBorderBitmap:Landroid/graphics/Bitmap;

    .line 96
    iput-boolean v4, p0, Lcom/android/systemui_ex/BatteryMeterView;->mIsUsingDarkColor:Z

    .line 99
    new-instance v2, Lcom/android/systemui_ex/BatteryMeterView$1;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/android/systemui_ex/BatteryMeterView$1;-><init>(Lcom/android/systemui_ex/BatteryMeterView;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mBatteryShowPercentObserver:Landroid/database/ContentObserver;

    .line 124
    new-instance v2, Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;

    invoke-direct {v2, p0, v6}, Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui_ex/BatteryMeterView;Lcom/android/systemui_ex/BatteryMeterView$1;)V

    iput-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mTracker:Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;

    .line 314
    new-instance v2, Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;

    invoke-direct {v2, p0, v6}, Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui_ex/BatteryMeterView;Lcom/android/systemui_ex/BatteryMeterView$1;)V

    iput-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDemoTracker:Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;

    .line 150
    invoke-virtual {p0, v3, v6}, Lcom/android/systemui_ex/BatteryMeterView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "status_bar_show_battery_percent"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mShowPercent:Z

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 154
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f080006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWhiteColor:I

    .line 155
    const v2, 0x7f080007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDarkColor:I

    .line 156
    const v2, 0x7f080008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWarningColor:I

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "status_bar_show_battery_percent"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v4, v3

    :cond_0
    iput-boolean v4, p0, Lcom/android/systemui_ex/BatteryMeterView;->mShowPercent:Z

    .line 160
    const v2, 0x10e0044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mCriticalLevel:I

    .line 163
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    .line 164
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 165
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 167
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/16 v4, 0x4c

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 169
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    .line 170
    const-string v2, "century-gothic-regular"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 171
    .local v0, "font":Landroid/graphics/Typeface;
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 172
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 173
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 174
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 176
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 177
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 178
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 179
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 180
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWarningColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDarkColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mPorterDuffDarkColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 183
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWhiteColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mPorterDuffWhiteColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 185
    const v2, 0x7f020015

    invoke-static {v1, v2}, Landroid/graphics/drawable/VectorDrawable;->create(Landroid/content/res/Resources;I)Landroid/graphics/drawable/VectorDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWhiteDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 186
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWhiteDrawable:Landroid/graphics/drawable/VectorDrawable;

    iget-object v3, p0, Lcom/android/systemui_ex/BatteryMeterView;->mPorterDuffWhiteColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/VectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 187
    const v2, 0x7f020015

    invoke-static {v1, v2}, Landroid/graphics/drawable/VectorDrawable;->create(Landroid/content/res/Resources;I)Landroid/graphics/drawable/VectorDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDarkDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 188
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDarkDrawable:Landroid/graphics/drawable/VectorDrawable;

    iget-object v3, p0, Lcom/android/systemui_ex/BatteryMeterView;->mPorterDuffDarkColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/VectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 189
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWhiteDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-direct {p0, v2}, Lcom/android/systemui_ex/BatteryMeterView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWhiteBitmap:Landroid/graphics/Bitmap;

    .line 190
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDarkDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-direct {p0, v2}, Lcom/android/systemui_ex/BatteryMeterView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDarkBitmap:Landroid/graphics/Bitmap;

    .line 192
    invoke-static {v1, v8}, Landroid/graphics/drawable/VectorDrawable;->create(Landroid/content/res/Resources;I)Landroid/graphics/drawable/VectorDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWhiteBorderDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 193
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWhiteBorderDrawable:Landroid/graphics/drawable/VectorDrawable;

    iget-object v3, p0, Lcom/android/systemui_ex/BatteryMeterView;->mPorterDuffWhiteColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/VectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 194
    invoke-static {v1, v8}, Landroid/graphics/drawable/VectorDrawable;->create(Landroid/content/res/Resources;I)Landroid/graphics/drawable/VectorDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDarkBorderDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 195
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDarkBorderDrawable:Landroid/graphics/drawable/VectorDrawable;

    iget-object v3, p0, Lcom/android/systemui_ex/BatteryMeterView;->mPorterDuffDarkColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/VectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 196
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWhiteBorderDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-direct {p0, v2}, Lcom/android/systemui_ex/BatteryMeterView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWhiteBorderBitmap:Landroid/graphics/Bitmap;

    .line 197
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDarkBorderDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-direct {p0, v2}, Lcom/android/systemui_ex/BatteryMeterView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDarkBorderBitmap:Landroid/graphics/Bitmap;

    .line 198
    return-void

    .end local v0    # "font":Landroid/graphics/Typeface;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    move v2, v4

    .line 151
    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/BatteryMeterView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/BatteryMeterView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui_ex/BatteryMeterView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 201
    const/4 v0, 0x0

    .line 203
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-gtz v2, :cond_1

    .line 204
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 209
    :goto_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 210
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 211
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 212
    return-object v0

    .line 206
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 318
    iget-boolean v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDemoMode:Z

    if-nez v2, :cond_1

    const-string v2, "enter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDemoMode:Z

    .line 320
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDemoTracker:Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;

    iget-object v3, p0, Lcom/android/systemui_ex/BatteryMeterView;->mTracker:Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;

    iget v3, v3, Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;->level:I

    iput v3, v2, Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;->level:I

    .line 321
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDemoTracker:Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;

    iget-object v3, p0, Lcom/android/systemui_ex/BatteryMeterView;->mTracker:Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;

    iget-boolean v3, v3, Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;->plugged:Z

    iput-boolean v3, v2, Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;->plugged:Z

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDemoMode:Z

    if-eqz v2, :cond_2

    const-string v2, "exit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 323
    iput-boolean v4, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDemoMode:Z

    .line 324
    invoke-virtual {p0}, Lcom/android/systemui_ex/BatteryMeterView;->postInvalidate()V

    goto :goto_0

    .line 325
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDemoMode:Z

    if-eqz v2, :cond_0

    const-string v2, "battery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    const-string v2, "level"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "level":Ljava/lang/String;
    const-string v2, "plugged"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "plugged":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 329
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDemoTracker:Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;->level:I

    .line 331
    :cond_3
    if-eqz v1, :cond_4

    .line 332
    iget-object v2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDemoTracker:Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;->plugged:Z

    .line 334
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui_ex/BatteryMeterView;->postInvalidate()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 248
    iget-boolean v9, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDemoMode:Z

    if-eqz v9, :cond_1

    iget-object v7, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDemoTracker:Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;

    .line 249
    .local v7, "tracker":Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;
    :goto_0
    iget v3, v7, Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;->level:I

    .line 250
    .local v3, "level":I
    const/4 v9, -0x1

    if-ne v3, v9, :cond_2

    .line 306
    :cond_0
    :goto_1
    return-void

    .line 248
    .end local v3    # "level":I
    .end local v7    # "tracker":Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;
    :cond_1
    iget-object v7, p0, Lcom/android/systemui_ex/BatteryMeterView;->mTracker:Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;

    goto :goto_0

    .line 252
    .restart local v3    # "level":I
    .restart local v7    # "tracker":Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;
    :cond_2
    int-to-float v9, v3

    const/high16 v10, 0x42c80000    # 100.0f

    div-float v2, v9, v10

    .line 253
    .local v2, "drawFrac":F
    const/16 v9, 0x60

    if-lt v3, v9, :cond_4

    .line 254
    const/high16 v2, 0x3f800000    # 1.0f

    .line 258
    :cond_3
    :goto_2
    iget v9, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWidth:I

    int-to-float v9, v9

    mul-float/2addr v9, v2

    float-to-int v4, v9

    .line 260
    .local v4, "pos":I
    iget-boolean v9, p0, Lcom/android/systemui_ex/BatteryMeterView;->mShowPercent:Z

    if-eqz v9, :cond_7

    .line 261
    new-instance v5, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWidth:I

    iget v12, p0, Lcom/android/systemui_ex/BatteryMeterView;->mHeight:I

    invoke-direct {v5, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 262
    .local v5, "rect":Landroid/graphics/Rect;
    iget-boolean v9, p0, Lcom/android/systemui_ex/BatteryMeterView;->mIsUsingDarkColor:Z

    if-eqz v9, :cond_5

    .line 263
    iget-object v9, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDarkBitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v5, v5, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 267
    :goto_3
    const/16 v9, 0xa

    if-gt v3, v9, :cond_6

    .line 269
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/high16 v10, 0x41f00000    # 30.0f

    const/high16 v11, 0x41c00000    # 24.0f

    iget-object v12, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 255
    .end local v4    # "pos":I
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_4
    iget v9, p0, Lcom/android/systemui_ex/BatteryMeterView;->mCriticalLevel:I

    if-gt v3, v9, :cond_3

    .line 256
    const/4 v2, 0x0

    goto :goto_2

    .line 265
    .restart local v4    # "pos":I
    .restart local v5    # "rect":Landroid/graphics/Rect;
    :cond_5
    iget-object v9, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWhiteBitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v5, v5, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 272
    :cond_6
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/high16 v10, 0x41f00000    # 30.0f

    const/high16 v11, 0x41c00000    # 24.0f

    iget-object v12, p0, Lcom/android/systemui_ex/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 275
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_7
    const/16 v9, 0xa

    if-gt v3, v9, :cond_9

    .line 276
    new-instance v5, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWidth:I

    iget v12, p0, Lcom/android/systemui_ex/BatteryMeterView;->mHeight:I

    invoke-direct {v5, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 277
    .restart local v5    # "rect":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    iget v9, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWidth:I

    sub-int/2addr v9, v4

    const/4 v10, 0x3

    iget v11, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWidth:I

    add-int/lit8 v11, v11, -0x3

    iget v12, p0, Lcom/android/systemui_ex/BatteryMeterView;->mHeight:I

    add-int/lit8 v12, v12, -0x3

    invoke-direct {v6, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 278
    .local v6, "rect2":Landroid/graphics/Rect;
    iget-boolean v9, p0, Lcom/android/systemui_ex/BatteryMeterView;->mIsUsingDarkColor:Z

    if-eqz v9, :cond_8

    .line 279
    iget-object v9, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDarkBorderBitmap:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/android/systemui_ex/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v5, v5, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 280
    iget-object v9, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDarkBitmap:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/android/systemui_ex/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v6, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 286
    :goto_4
    const-string v9, "!"

    const/high16 v10, 0x41e80000    # 29.0f

    const/high16 v11, 0x41c00000    # 24.0f

    iget-object v12, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 282
    :cond_8
    iget-object v9, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWhiteBorderBitmap:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/android/systemui_ex/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v5, v5, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 283
    iget-object v9, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWhiteBitmap:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/android/systemui_ex/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v6, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 290
    .end local v5    # "rect":Landroid/graphics/Rect;
    .end local v6    # "rect2":Landroid/graphics/Rect;
    :cond_9
    iget-boolean v9, p0, Lcom/android/systemui_ex/BatteryMeterView;->mIsUsingDarkColor:Z

    if-eqz v9, :cond_b

    .line 291
    iget-object v0, p0, Lcom/android/systemui_ex/BatteryMeterView;->mDarkBitmap:Landroid/graphics/Bitmap;

    .line 295
    .local v0, "battery":Landroid/graphics/Bitmap;
    :goto_5
    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v9, v2, v9

    if-gez v9, :cond_a

    .line 296
    new-instance v1, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWidth:I

    sub-int/2addr v11, v4

    iget v12, p0, Lcom/android/systemui_ex/BatteryMeterView;->mHeight:I

    invoke-direct {v1, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 297
    .local v1, "darkRect":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/systemui_ex/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 300
    .end local v1    # "darkRect":Landroid/graphics/Rect;
    :cond_a
    const/4 v9, 0x0

    cmpl-float v9, v2, v9

    if-lez v9, :cond_0

    .line 301
    new-instance v8, Landroid/graphics/Rect;

    iget v9, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWidth:I

    sub-int/2addr v9, v4

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWidth:I

    iget v12, p0, Lcom/android/systemui_ex/BatteryMeterView;->mHeight:I

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 302
    .local v8, "whiteRect":Landroid/graphics/Rect;
    const/4 v9, 0x0

    invoke-virtual {p1, v0, v8, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 293
    .end local v0    # "battery":Landroid/graphics/Bitmap;
    .end local v8    # "whiteRect":Landroid/graphics/Rect;
    :cond_b
    iget-object v0, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWhiteBitmap:Landroid/graphics/Bitmap;

    .restart local v0    # "battery":Landroid/graphics/Bitmap;
    goto :goto_5
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 128
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 129
    iget-object v0, p0, Lcom/android/systemui_ex/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_battery_percent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui_ex/BatteryMeterView;->mBatteryShowPercentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui_ex/BatteryMeterView;->mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui_ex/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 131
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/systemui_ex/BatteryMeterView;->mTracker:Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;

    iget v0, v0, Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;->level:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/BatteryMeterView;->mTracker:Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;

    iget-boolean v0, v0, Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;->plugged:Z

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/BatteryMeterView;->mTracker:Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;

    iget-boolean v0, v0, Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;->charging:Z

    if-eq v0, p3, :cond_1

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/BatteryMeterView;->mTracker:Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;

    iput p1, v0, Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;->level:I

    .line 228
    iget-object v0, p0, Lcom/android/systemui_ex/BatteryMeterView;->mTracker:Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;

    iput-boolean p2, v0, Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;->plugged:Z

    .line 229
    iget-object v0, p0, Lcom/android/systemui_ex/BatteryMeterView;->mTracker:Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;

    iput-boolean p3, v0, Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;->charging:Z

    .line 231
    invoke-virtual {p0}, Lcom/android/systemui_ex/BatteryMeterView;->postInvalidate()V

    .line 233
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 136
    iget-object v0, p0, Lcom/android/systemui_ex/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/BatteryMeterView;->mBatteryShowPercentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui_ex/BatteryMeterView;->mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui_ex/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 138
    return-void
.end method

.method public onPowerSaveChanged()V
    .locals 0

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/systemui_ex/BatteryMeterView;->invalidate()V

    .line 238
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 242
    iput p2, p0, Lcom/android/systemui_ex/BatteryMeterView;->mHeight:I

    .line 243
    iput p1, p0, Lcom/android/systemui_ex/BatteryMeterView;->mWidth:I

    .line 244
    return-void
.end method

.method public onStatusbarColorChange(Z)V
    .locals 0
    .param p1, "isUsingDarkColor"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/systemui_ex/BatteryMeterView;->mIsUsingDarkColor:Z

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui_ex/BatteryMeterView;->invalidate()V

    .line 112
    return-void
.end method

.method public setBatteryController(Lcom/android/systemui_ex/statusbar/policy/BatteryController;)V
    .locals 0
    .param p1, "batteryController"    # Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/systemui_ex/BatteryMeterView;->mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    .line 217
    return-void
.end method
