.class public Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;
.super Landroid/view/View;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;,
        Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;,
        Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;,
        Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;
    }
.end annotation


# static fields
.field static final CHART_DATA_BIN_MASK:I = -0x10000

.field static final CHART_DATA_BIN_SHIFT:I = 0x10

.field static final CHART_DATA_X_MASK:I = 0xffff

.field static final DEBUG:Z = true

.field static final MONOSPACE:I = 0x3

.field static final NUM_PHONE_SIGNALS:I = 0x7

.field static final SANS:I = 0x1

.field static final SERIF:I = 0x2

.field static final TAG:Ljava/lang/String; = "BatteryHistoryChart"


# instance fields
.field final mBatCriticalPath:Landroid/graphics/Path;

.field final mBatGoodPath:Landroid/graphics/Path;

.field mBatHigh:I

.field final mBatLevelPath:Landroid/graphics/Path;

.field mBatLow:I

.field final mBatWarnPath:Landroid/graphics/Path;

.field final mBatteryBackgroundPaint:Landroid/graphics/Paint;

.field mBatteryBroadcast:Landroid/content/Intent;

.field mBatteryCriticalLevel:I

.field final mBatteryCriticalPaint:Landroid/graphics/Paint;

.field final mBatteryGoodPaint:Landroid/graphics/Paint;

.field mBatteryLevel:I

.field mBatteryWarnLevel:I

.field final mBatteryWarnPaint:Landroid/graphics/Paint;

.field mBitmap:Landroid/graphics/Bitmap;

.field mCameraOnLabel:Ljava/lang/String;

.field mCameraOnOffset:I

.field final mCameraOnPaint:Landroid/graphics/Paint;

.field final mCameraOnPath:Landroid/graphics/Path;

.field mCanvas:Landroid/graphics/Canvas;

.field mChargeDurationString:Ljava/lang/String;

.field mChargeDurationStringWidth:I

.field mChargeLabelString:Ljava/lang/String;

.field mChargeLabelStringWidth:I

.field mChargingLabel:Ljava/lang/String;

.field mChargingOffset:I

.field final mChargingPaint:Landroid/graphics/Paint;

.field final mChargingPath:Landroid/graphics/Path;

.field mChartMinHeight:I

.field mCpuRunningLabel:Ljava/lang/String;

.field mCpuRunningOffset:I

.field final mCpuRunningPaint:Landroid/graphics/Paint;

.field final mCpuRunningPath:Landroid/graphics/Path;

.field final mDateLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;",
            ">;"
        }
    .end annotation
.end field

.field final mDateLinePaint:Landroid/graphics/Paint;

.field final mDateLinePath:Landroid/graphics/Path;

.field final mDebugRectPaint:Landroid/graphics/Paint;

.field mDischarging:Z

.field mDrainString:Ljava/lang/String;

.field mDrainStringWidth:I

.field mDurationString:Ljava/lang/String;

.field mDurationStringWidth:I

.field mEndDataWallTime:J

.field mEndWallTime:J

.field mFlashlightOnLabel:Ljava/lang/String;

.field mFlashlightOnOffset:I

.field final mFlashlightOnPaint:Landroid/graphics/Paint;

.field final mFlashlightOnPath:Landroid/graphics/Path;

.field mGpsOnLabel:Ljava/lang/String;

.field mGpsOnOffset:I

.field final mGpsOnPaint:Landroid/graphics/Paint;

.field final mGpsOnPath:Landroid/graphics/Path;

.field mHaveCamera:Z

.field mHaveFlashlight:Z

.field mHaveGps:Z

.field mHavePhoneSignal:Z

.field mHaveWifi:Z

.field mHeaderHeight:I

.field mHeaderTextAscent:I

.field mHeaderTextDescent:I

.field final mHeaderTextPaint:Landroid/text/TextPaint;

.field mHistDataEnd:J

.field mHistEnd:J

.field mHistStart:J

.field mLargeMode:Z

.field mLastHeight:I

.field mLastWidth:I

.field mLevelBottom:I

.field mLevelLeft:I

.field mLevelOffset:I

.field mLevelRight:I

.field mLevelTop:I

.field mLineWidth:I

.field mMaxPercentLabelString:Ljava/lang/String;

.field mMaxPercentLabelStringWidth:I

.field mMinPercentLabelString:Ljava/lang/String;

.field mMinPercentLabelStringWidth:I

.field mNumHist:I

.field final mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;

.field mPhoneSignalLabel:Ljava/lang/String;

.field mPhoneSignalOffset:I

.field mScreenOnLabel:Ljava/lang/String;

.field mScreenOnOffset:I

.field final mScreenOnPaint:Landroid/graphics/Paint;

.field final mScreenOnPath:Landroid/graphics/Path;

.field mStartWallTime:J

.field mStats:Landroid/os/BatteryStats;

.field mStatsPeriod:J

.field mTextAscent:I

.field mTextDescent:I

.field final mTextPaint:Landroid/text/TextPaint;

.field mThinLineWidth:I

.field final mTimeLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;",
            ">;"
        }
    .end annotation
.end field

.field final mTimeRemainPaint:Landroid/graphics/Paint;

.field final mTimeRemainPath:Landroid/graphics/Path;

.field mWifiRunningLabel:Ljava/lang/String;

.field mWifiRunningOffset:I

.field final mWifiRunningPaint:Landroid/graphics/Paint;

.field final mWifiRunningPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 355
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    .line 127
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    .line 128
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    .line 129
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    .line 130
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    .line 131
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    .line 132
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    .line 133
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    .line 134
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    .line 135
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    .line 136
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    .line 137
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    .line 138
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    .line 139
    new-instance v13, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-direct {v13}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;

    .line 140
    new-instance v13, Landroid/text/TextPaint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 141
    new-instance v13, Landroid/text/TextPaint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    .line 142
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    .line 144
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 145
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    .line 146
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    .line 147
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    .line 148
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    .line 149
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    .line 150
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    .line 151
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    .line 152
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    .line 153
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    .line 154
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    .line 155
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    .line 156
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    .line 196
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    .line 197
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    .line 231
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    .line 232
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    .line 357
    const-string v13, "BatteryHistoryChart"

    const-string v14, "New BatteryHistoryChart!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10e0051

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    .line 361
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10e004f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    .line 364
    const/4 v13, 0x1

    const/high16 v14, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    .line 366
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 367
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    const/16 v14, 0x80

    const/4 v15, 0x0

    const/16 v16, 0x80

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 369
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    const/16 v14, 0x80

    const/16 v15, 0x80

    const/16 v16, 0x80

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 371
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    const/16 v14, 0xc0

    const/16 v15, 0x80

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 373
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    const v14, -0x312845

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 375
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;

    sget-object v14, Lcom/android/settings_ex/Utils;->BADNESS_COLORS:[I

    invoke-virtual {v13, v14}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->setColors([I)V

    .line 384
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    const/16 v14, 0xff

    const/16 v15, 0xff

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 385
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 387
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 390
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 394
    sget-object v13, Lcom/android/settings_ex/R$styleable;->BatteryHistoryChart:[I

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 398
    .local v2, "a":Landroid/content/res/TypedArray;
    new-instance v9, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;

    invoke-direct {v9}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;-><init>()V

    .line 399
    .local v9, "mainTextAttrs":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;
    new-instance v7, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;

    invoke-direct {v7}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;-><init>()V

    .line 400
    .local v7, "headTextAttrs":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v2, v13}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->retrieve(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    .line 401
    const/16 v13, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v2, v13}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->retrieve(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    .line 403
    const/4 v12, 0x0

    .line 404
    .local v12, "shadowcolor":I
    const/4 v4, 0x0

    .local v4, "dx":F
    const/4 v5, 0x0

    .local v5, "dy":F
    const/4 v11, 0x0

    .line 406
    .local v11, "r":F
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v10

    .line 407
    .local v10, "n":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_0

    .line 408
    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 410
    .local v3, "attr":I
    packed-switch v3, :pswitch_data_0

    .line 407
    :goto_1
    :pswitch_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 412
    :pswitch_1
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 413
    goto :goto_1

    .line 416
    :pswitch_2
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 417
    goto :goto_1

    .line 420
    :pswitch_3
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 421
    goto :goto_1

    .line 424
    :pswitch_4
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 425
    goto :goto_1

    .line 428
    :pswitch_5
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    iput-object v13, v9, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    .line 429
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    iput-object v13, v7, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 433
    :pswitch_6
    iget v13, v9, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    iput v13, v9, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    .line 434
    iget v13, v7, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    iput v13, v7, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    goto :goto_1

    .line 438
    :pswitch_7
    iget v13, v9, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v9, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    .line 439
    iget v13, v7, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v7, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    goto :goto_1

    .line 443
    :pswitch_8
    iget v13, v9, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v9, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    .line 444
    iget v13, v7, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v7, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    goto :goto_1

    .line 448
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 450
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 451
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 452
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 454
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 455
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 459
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 463
    :pswitch_b
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    goto/16 :goto_1

    .line 468
    .end local v3    # "attr":I
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 470
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v13}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->apply(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v13}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->apply(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 475
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v6, v13, 0x2

    .line 476
    .local v6, "hairlineWidth":I
    const/4 v13, 0x1

    if-ge v6, v13, :cond_1

    .line 477
    const/4 v6, 0x1

    .line 479
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    int-to-float v14, v6

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 480
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/DashPathEffect;

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 483
    if-eqz v12, :cond_2

    .line 484
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v13, v11, v4, v5, v12}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 485
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v13, v11, v4, v5, v12}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 487
    :cond_2
    return-void

    .line 410
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isDayFirst()Z
    .locals 3

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, "value":Ljava/lang/String;
    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method addDateLabel(Ljava/util/Calendar;IIZ)V
    .locals 14
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "levelLeft"    # I
    .param p3, "levelRight"    # I
    .param p4, "isDayFirst"    # Z

    .prologue
    .line 1188
    iget-wide v4, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 1189
    .local v4, "walltimeStart":J
    iget-wide v6, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    sub-long v2, v6, v4

    .line 1190
    .local v2, "walltimeChange":J
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;

    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    sub-int v9, p3, p2

    int-to-long v12, v9

    mul-long/2addr v10, v12

    div-long/2addr v10, v2

    long-to-int v9, v10

    add-int v9, v9, p2

    move/from16 v0, p4

    invoke-direct {v7, v8, v9, p1, v0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;-><init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    return-void
.end method

.method addTimeLabel(Ljava/util/Calendar;IIZ)V
    .locals 14
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "levelLeft"    # I
    .param p3, "levelRight"    # I
    .param p4, "is24hr"    # Z

    .prologue
    .line 1179
    iget-wide v4, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 1180
    .local v4, "walltimeStart":J
    iget-wide v6, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    sub-long v2, v6, v4

    .line 1181
    .local v2, "walltimeChange":J
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;

    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    sub-int v9, p3, p2

    int-to-long v12, v9

    mul-long/2addr v10, v12

    div-long/2addr v10, v2

    long-to-int v9, v10

    add-int v9, v9, p2

    move/from16 v0, p4

    invoke-direct {v7, v8, v9, p1, v0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;-><init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    return-void
.end method

.method buildBitmap(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 1221
    :goto_0
    return-void

    .line 1215
    :cond_0
    const-string v0, "BatteryHistoryChart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    .line 1219
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCanvas:Landroid/graphics/Canvas;

    .line 1220
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->drawChart(Landroid/graphics/Canvas;II)V

    goto :goto_0
.end method

.method drawChart(Landroid/graphics/Canvas;II)V
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1224
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->isLayoutRtl()Z

    move-result v15

    .line 1225
    .local v15, "layoutRtl":Z
    if-eqz v15, :cond_3

    move/from16 v22, p2

    .line 1226
    .local v22, "textStartX":I
    :goto_0
    if-eqz v15, :cond_4

    const/16 v21, 0x0

    .line 1227
    .local v21, "textEndX":I
    :goto_1
    if-eqz v15, :cond_5

    sget-object v19, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 1228
    .local v19, "textAlignLeft":Landroid/graphics/Paint$Align;
    :goto_2
    if-eqz v15, :cond_6

    sget-object v20, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 1234
    .local v20, "textAlignRight":Landroid/graphics/Paint$Align;
    :goto_3
    const-string v2, "BatteryHistoryChart"

    const-string v3, "Drawing level path."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1237
    const-string v2, "BatteryHistoryChart"

    const-string v3, "Drawing time remain path."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1240
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_a

    .line 1241
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x4

    add-int v25, v2, v3

    .line 1242
    .local v25, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int v27, v2, v3

    .line 1243
    .local v27, "ytick":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1244
    const/4 v14, 0x0

    .line 1245
    .local v14, "lastX":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_b

    .line 1246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;

    .line 1247
    .local v12, "label":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;
    if-nez v11, :cond_7

    .line 1248
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v3, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int v24, v2, v3

    .line 1249
    .local v24, "x":I
    if-gez v24, :cond_1

    .line 1250
    const/16 v24, 0x0

    .line 1252
    :cond_1
    const-string v2, "BatteryHistoryChart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drawing left label: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1254
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v3, v2

    move/from16 v0, v27

    int-to-float v4, v0

    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int v2, v2, v27

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1255
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v14, v24, v2

    .line 1245
    :cond_2
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1225
    .end local v11    # "i":I
    .end local v12    # "label":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;
    .end local v14    # "lastX":I
    .end local v19    # "textAlignLeft":Landroid/graphics/Paint$Align;
    .end local v20    # "textAlignRight":Landroid/graphics/Paint$Align;
    .end local v21    # "textEndX":I
    .end local v22    # "textStartX":I
    .end local v24    # "x":I
    .end local v25    # "y":I
    .end local v27    # "ytick":I
    :cond_3
    const/16 v22, 0x0

    goto/16 :goto_0

    .restart local v22    # "textStartX":I
    :cond_4
    move/from16 v21, p2

    .line 1226
    goto/16 :goto_1

    .line 1227
    .restart local v21    # "textEndX":I
    :cond_5
    sget-object v19, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto/16 :goto_2

    .line 1228
    .restart local v19    # "textAlignLeft":Landroid/graphics/Paint$Align;
    :cond_6
    sget-object v20, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto/16 :goto_3

    .line 1256
    .restart local v11    # "i":I
    .restart local v12    # "label":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;
    .restart local v14    # "lastX":I
    .restart local v20    # "textAlignRight":Landroid/graphics/Paint$Align;
    .restart local v25    # "y":I
    .restart local v27    # "ytick":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v11, v2, :cond_8

    .line 1257
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v3, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int v24, v2, v3

    .line 1258
    .restart local v24    # "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    add-int/2addr v2, v14

    move/from16 v0, v24

    if-lt v0, v2, :cond_2

    .line 1261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;

    .line 1262
    .local v17, "nextLabel":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v2, v3

    move/from16 v0, v24

    if-gt v0, v2, :cond_2

    .line 1265
    const-string v2, "BatteryHistoryChart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drawing middle label: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    iget-object v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1267
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v3, v2

    move/from16 v0, v27

    int-to-float v4, v0

    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int v2, v2, v27

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1268
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v14, v24, v2

    .line 1269
    goto/16 :goto_5

    .line 1270
    .end local v17    # "nextLabel":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;
    .end local v24    # "x":I
    :cond_8
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v3, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int v24, v2, v3

    .line 1271
    .restart local v24    # "x":I
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v2, v2, v24

    move/from16 v0, p2

    if-lt v2, v0, :cond_9

    .line 1272
    add-int/lit8 v2, p2, -0x1

    iget v3, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    sub-int v24, v2, v3

    .line 1274
    :cond_9
    const-string v2, "BatteryHistoryChart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drawing right label: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    iget-object v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1276
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v3, v2

    move/from16 v0, v27

    int-to-float v4, v0

    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int v2, v2, v27

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 1279
    .end local v11    # "i":I
    .end local v12    # "label":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;
    .end local v14    # "lastX":I
    .end local v24    # "x":I
    .end local v25    # "y":I
    .end local v27    # "ytick":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 1280
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x4

    add-int v25, v2, v3

    .line 1281
    .restart local v25    # "y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1287
    .end local v25    # "y":I
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    neg-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3

    add-int v10, v2, v3

    .line 1288
    .local v10, "headerTop":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1289
    const-string v2, "BatteryHistoryChart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drawing charge label string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1291
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    div-int/lit8 v18, v2, 0x2

    .line 1292
    .local v18, "stringHalfWidth":I
    if-eqz v15, :cond_c

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    .line 1293
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v3, v2, 0x2

    if-eqz v15, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    :goto_6
    add-int v9, v3, v2

    .line 1295
    .local v9, "headerCenter":I
    const-string v2, "BatteryHistoryChart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drawing charge duration string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    sub-int v3, v9, v18

    int-to-float v3, v3

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1299
    const-string v2, "BatteryHistoryChart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drawing drain string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    move/from16 v0, v21

    int-to-float v3, v0

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1303
    const-string v2, "BatteryHistoryChart"

    const-string v3, "Drawing good battery path"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1306
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1307
    const-string v2, "BatteryHistoryChart"

    const-string v3, "Drawing warn battery path"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1310
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1311
    const-string v2, "BatteryHistoryChart"

    const-string v3, "Drawing critical battery path"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1314
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_10

    .line 1315
    const-string v2, "BatteryHistoryChart"

    const-string v3, "Drawing phone signal path"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v2, p3, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v23, v2, v3

    .line 1317
    .local v23, "top":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->draw(Landroid/graphics/Canvas;II)V

    .line 1319
    .end local v23    # "top":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1320
    const-string v2, "BatteryHistoryChart"

    const-string v3, "Drawing screen on path"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1323
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1324
    const-string v2, "BatteryHistoryChart"

    const-string v3, "Drawing charging path"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1327
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v2, :cond_13

    .line 1328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1329
    const-string v2, "BatteryHistoryChart"

    const-string v3, "Drawing gps path"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1333
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    if-eqz v2, :cond_14

    .line 1334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1335
    const-string v2, "BatteryHistoryChart"

    const-string v3, "Drawing flashlight path"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1339
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    if-eqz v2, :cond_15

    .line 1340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1341
    const-string v2, "BatteryHistoryChart"

    const-string v3, "Drawing camera path"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1345
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v2, :cond_16

    .line 1346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1347
    const-string v2, "BatteryHistoryChart"

    const-string v3, "Drawing wifi path"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1351
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 1352
    const-string v2, "BatteryHistoryChart"

    const-string v3, "Drawing running path"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1356
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v2, :cond_1d

    .line 1357
    const-string v2, "BatteryHistoryChart"

    const-string v3, "Drawing large mode labels"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v8

    .line 1359
    .local v8, "align":Landroid/graphics/Paint$Align;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1360
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_18

    .line 1361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1364
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v2, :cond_19

    .line 1365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1368
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    if-eqz v2, :cond_1a

    .line 1369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1372
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    if-eqz v2, :cond_1b

    .line 1373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1376
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v2, :cond_1c

    .line 1377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1380
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1389
    .end local v8    # "align":Landroid/graphics/Paint$Align;
    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v2, v3

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v2, v5

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1391
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v2, :cond_1f

    .line 1392
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_7
    const/16 v2, 0xa

    if-ge v11, v2, :cond_1f

    .line 1393
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int/2addr v3, v4

    mul-int/2addr v3, v11

    div-int/lit8 v3, v3, 0xa

    add-int v25, v2, v3

    .line 1394
    .restart local v25    # "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v2

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v5, v2

    move/from16 v0, v25

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1392
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1293
    .end local v9    # "headerCenter":I
    .end local v11    # "i":I
    .end local v25    # "y":I
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelStringWidth:I

    goto/16 :goto_6

    .line 1398
    .restart local v9    # "headerCenter":I
    :cond_1f
    const-string v2, "BatteryHistoryChart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drawing max percent, origw="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", noww="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMinPercentLabelStringWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1404
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v2, v4

    int-to-float v4, v2

    move/from16 v0, p2

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_22

    .line 1408
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    add-int v28, v2, v3

    .line 1409
    .local v28, "ytop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move/from16 v26, v0

    .line 1410
    .local v26, "ybottom":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    .line 1411
    .local v13, "lastLeft":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    .restart local v11    # "i":I
    :goto_8
    if-ltz v11, :cond_22

    .line 1413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;

    .line 1414
    .local v12, "label":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int v16, v2, v3

    .line 1415
    .local v16, "left":I
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x2

    add-int v24, v2, v3

    .line 1416
    .restart local v24    # "x":I
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    add-int v2, v2, v24

    if-lt v2, v13, :cond_21

    .line 1417
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    sub-int v24, v2, v3

    .line 1418
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int v16, v24, v2

    .line 1419
    move/from16 v0, v16

    if-lt v0, v13, :cond_21

    .line 1412
    :cond_20
    :goto_9
    add-int/lit8 v11, v11, -0x1

    goto :goto_8

    .line 1424
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move/from16 v0, v16

    if-lt v0, v2, :cond_20

    .line 1428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    iget v3, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    int-to-float v3, v3

    move/from16 v0, v28

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    iget v3, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    int-to-float v3, v3

    move/from16 v0, v26

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1432
    iget-object v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->label:Ljava/lang/String;

    move/from16 v0, v24

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int v4, v28, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 1435
    .end local v11    # "i":I
    .end local v12    # "label":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;
    .end local v13    # "lastLeft":I
    .end local v16    # "left":I
    .end local v24    # "x":I
    .end local v26    # "ybottom":I
    .end local v28    # "ytop":I
    :cond_22
    return-void
.end method

.method finishPaths(IIIIILandroid/graphics/Path;IZZZZZZZLandroid/graphics/Path;)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "levelh"    # I
    .param p4, "startX"    # I
    .param p5, "y"    # I
    .param p6, "curLevelPath"    # Landroid/graphics/Path;
    .param p7, "lastX"    # I
    .param p8, "lastCharging"    # Z
    .param p9, "lastScreenOn"    # Z
    .param p10, "lastGpsOn"    # Z
    .param p11, "lastFlashlightOn"    # Z
    .param p12, "lastCameraOn"    # Z
    .param p13, "lastWifiRunning"    # Z
    .param p14, "lastCpuRunning"    # Z
    .param p15, "lastPath"    # Landroid/graphics/Path;

    .prologue
    .line 668
    if-eqz p6, :cond_2

    .line 669
    if-ltz p7, :cond_1

    if-ge p7, p1, :cond_1

    .line 670
    if-eqz p15, :cond_0

    .line 671
    int-to-float v1, p1

    int-to-float v2, p5

    move-object/from16 v0, p15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 673
    :cond_0
    int-to-float v1, p1

    int-to-float v2, p5

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 675
    :cond_1
    int-to-float v1, p1

    iget v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 676
    int-to-float v1, p4

    iget v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 677
    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    .line 680
    :cond_2
    if-eqz p8, :cond_3

    .line 681
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 683
    :cond_3
    if-eqz p9, :cond_4

    .line 684
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 686
    :cond_4
    if-eqz p10, :cond_5

    .line 687
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 689
    :cond_5
    if-eqz p11, :cond_6

    .line 690
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 692
    :cond_6
    if-eqz p12, :cond_7

    .line 693
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 695
    :cond_7
    if-eqz p13, :cond_8

    .line 696
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 698
    :cond_8
    if-eqz p14, :cond_9

    .line 699
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 701
    :cond_9
    iget-boolean v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v1, :cond_a

    .line 702
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v1, p1}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->finish(I)V

    .line 704
    :cond_a
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1198
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1200
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getWidth()I

    move-result v1

    .line 1201
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getHeight()I

    move-result v0

    .line 1205
    .local v0, "height":I
    const-string v2, "BatteryHistoryChart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDraw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->drawChart(Landroid/graphics/Canvas;II)V

    .line 1208
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 648
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    .line 649
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMinPercentLabelStringWidth:I

    .line 650
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    .line 651
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelStringWidth:I

    .line 652
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    .line 653
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    .line 654
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0xf

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    .line 656
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    .line 657
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    .line 658
    iget v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    iget v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    sub-int v0, v1, v2

    .line 659
    .local v0, "headerTextHeight":I
    mul-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    .line 660
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getDefaultSize(II)I

    move-result v1

    iget v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    add-int/2addr v2, v3

    invoke-static {v2, p2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getDefaultSize(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->setMeasuredDimension(II)V

    .line 662
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 74
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 718
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 720
    const-string v4, "BatteryHistoryChart"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "onSizeChanged: "

    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v68, "x"

    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v68, " to "

    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v68, "x"

    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    move/from16 v0, p1

    if-ne v4, v0, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    move/from16 v0, p2

    if-ne v4, v0, :cond_1

    .line 1176
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    if-eqz v4, :cond_0

    .line 730
    const-string v4, "BatteryHistoryChart"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "Rebuilding chart for: "

    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v68, "x"

    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    .line 733
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    .line 734
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    .line 735
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCanvas:Landroid/graphics/Canvas;

    .line 737
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int v58, v4, v6

    .line 738
    .local v58, "textHeight":I
    mul-int/lit8 v4, v58, 0xa

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    add-int/2addr v4, v6

    move/from16 v0, p2

    if-le v0, v4, :cond_13

    .line 739
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 740
    mul-int/lit8 v4, v58, 0xf

    move/from16 v0, p2

    if-le v0, v4, :cond_12

    .line 742
    div-int/lit8 v4, v58, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 751
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    if-gtz v4, :cond_2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 753
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    .line 754
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .line 755
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    .line 756
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-int v52, v4, v6

    .line 758
    .local v52, "levelWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 759
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 760
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 761
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 762
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 763
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 764
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 765
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 766
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 767
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 768
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 769
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 771
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    add-int v4, v4, v58

    add-int/lit8 v40, v4, 0xa

    .line 775
    .local v40, "fullBarOffset":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v4, :cond_19

    .line 776
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    add-int/lit8 v4, v4, 0xa

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    .line 778
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    add-int v4, v4, v40

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 779
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    add-int v4, v4, v40

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    .line 780
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    add-int v4, v4, v40

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    .line 781
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v4, :cond_14

    move/from16 v4, v40

    :goto_2
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    .line 782
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v4, :cond_15

    move/from16 v4, v40

    :goto_3
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    .line 783
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    if-eqz v4, :cond_16

    move/from16 v4, v40

    :goto_4
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    .line 784
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    if-eqz v4, :cond_17

    move/from16 v4, v40

    :goto_5
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    .line 785
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v6, :cond_18

    .end local v40    # "fullBarOffset":I
    :goto_6
    add-int v4, v4, v40

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 787
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v4, :cond_3

    .line 788
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    .line 800
    :cond_3
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 801
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 802
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 803
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 804
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 805
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 806
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 807
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 808
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 809
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 810
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 811
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 813
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 814
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 816
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v62, v0

    .line 817
    .local v62, "walltimeStart":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v68, v0

    cmp-long v4, v68, v62

    if-lez v4, :cond_1a

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v68, v0

    sub-long v60, v68, v62

    .line 819
    .local v60, "walltimeChange":J
    :goto_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v34, v0

    .line 820
    .local v34, "curWalltime":J
    const-wide/16 v46, 0x0

    .line 822
    .local v46, "lastRealtime":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLow:I

    move/from16 v22, v0

    .line 823
    .local v22, "batLow":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLow:I

    sub-int v21, v4, v6

    .line 825
    .local v21, "batChange":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    sub-int v4, p2, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int v7, v4, v6

    .line 826
    .local v7, "levelh":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    .line 828
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .local v5, "x":I
    const/16 v67, 0x0

    .local v67, "y":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .local v8, "startX":I
    const/4 v11, -0x1

    .local v11, "lastX":I
    const/4 v9, -0x1

    .line 829
    .local v9, "lastY":I
    const-string v4, "BatteryHistoryChart"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "zhuyang--onDraw--mLevelLeft: "

    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const-string v4, "BatteryHistoryChart"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "zhuyang--onDraw--mLevelTop: "

    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/16 v43, 0x0

    .line 832
    .local v43, "i":I
    const/4 v10, 0x0

    .line 833
    .local v10, "curLevelPath":Landroid/graphics/Path;
    const/16 v19, 0x0

    .line 834
    .local v19, "lastLinePath":Landroid/graphics/Path;
    const/4 v12, 0x0

    .local v12, "lastCharging":Z
    const/4 v13, 0x0

    .local v13, "lastScreenOn":Z
    const/4 v14, 0x0

    .line 835
    .local v14, "lastGpsOn":Z
    const/4 v15, 0x0

    .local v15, "lastFlashlightOn":Z
    const/16 v16, 0x0

    .line 836
    .local v16, "lastCameraOn":Z
    const/16 v17, 0x0

    .local v17, "lastWifiRunning":Z
    const/16 v50, 0x0

    .local v50, "lastWifiSupplRunning":Z
    const/16 v18, 0x0

    .line 837
    .local v18, "lastCpuRunning":Z
    const/16 v51, 0x0

    .line 838
    .local v51, "lastWifiSupplState":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mNumHist:I

    move/from16 v20, v0

    .line 839
    .local v20, "N":I
    const-string v4, "BatteryHistoryChart"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "zhuyang--onDraw--mEndDataWallTime: "

    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    move-wide/from16 v68, v0

    move-wide/from16 v0, v68

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const-string v4, "BatteryHistoryChart"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "zhuyang--onDraw--mStartWallTime: "

    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v68, v0

    move-wide/from16 v0, v68

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const-string v4, "BatteryHistoryChart"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "zhuyang--onDraw--startIteratingHistoryLocked: "

    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v68

    move/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    move-wide/from16 v68, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v70, v0

    cmp-long v4, v68, v70

    if-lez v4, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v4}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 843
    new-instance v54, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v54 .. v54}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .local v54, "rec":Landroid/os/BatteryStats$HistoryItem;
    move/from16 v66, v5

    .line 844
    .end local v5    # "x":I
    .end local v12    # "lastCharging":Z
    .end local v13    # "lastScreenOn":Z
    .end local v14    # "lastGpsOn":Z
    .end local v15    # "lastFlashlightOn":Z
    .end local v16    # "lastCameraOn":Z
    .local v66, "x":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v4

    if-eqz v4, :cond_34

    move/from16 v0, v43

    move/from16 v1, v20

    if-ge v0, v1, :cond_34

    .line 845
    invoke-virtual/range {v54 .. v54}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 846
    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v68, v0

    sub-long v68, v68, v46

    add-long v34, v34, v68

    .line 847
    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v46, v0

    .line 848
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-long v68, v34, v62

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v70, v0

    mul-long v68, v68, v70

    div-long v68, v68, v60

    move-wide/from16 v0, v68

    long-to-int v6, v0

    add-int v5, v4, v6

    .line 849
    .end local v66    # "x":I
    .restart local v5    # "x":I
    if-gez v5, :cond_4

    .line 850
    const/4 v5, 0x0

    .line 862
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, v54

    iget-byte v6, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int v6, v6, v22

    add-int/lit8 v68, v7, -0x1

    mul-int v6, v6, v68

    div-int v6, v6, v21

    sub-int v67, v4, v6

    .line 864
    if-eq v11, v5, :cond_8

    .line 866
    move/from16 v0, v67

    if-eq v9, v0, :cond_8

    .line 869
    move-object/from16 v0, v54

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v59, v0

    .line 870
    .local v59, "value":B
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    move/from16 v0, v59

    if-gt v0, v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v53, v0

    .line 874
    .local v53, "path":Landroid/graphics/Path;
    :goto_a
    move-object/from16 v0, v53

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1d

    .line 875
    if-eqz v19, :cond_5

    .line 876
    int-to-float v4, v5

    move/from16 v0, v67

    int-to-float v6, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 878
    :cond_5
    if-eqz v53, :cond_6

    .line 879
    int-to-float v4, v5

    move/from16 v0, v67

    int-to-float v6, v0

    move-object/from16 v0, v53

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 881
    :cond_6
    move-object/from16 v19, v53

    .line 886
    :cond_7
    :goto_b
    if-nez v10, :cond_1e

    .line 887
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 888
    int-to-float v4, v5

    move/from16 v0, v67

    int-to-float v6, v0

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 889
    move v8, v5

    .line 893
    :goto_c
    move v11, v5

    .line 894
    move/from16 v9, v67

    .line 898
    .end local v53    # "path":Landroid/graphics/Path;
    .end local v59    # "value":B
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v4, :cond_11

    .line 899
    move-object/from16 v0, v54

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x80000

    and-int/2addr v4, v6

    if-eqz v4, :cond_1f

    const/16 v32, 0x1

    .line 901
    .local v32, "charging":Z
    :goto_d
    move/from16 v0, v32

    if-eq v0, v12, :cond_9

    .line 902
    if-eqz v32, :cond_20

    .line 903
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    move/from16 v68, v0

    sub-int v68, p2, v68

    move/from16 v0, v68

    int-to-float v0, v0

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 907
    :goto_e
    move/from16 v12, v32

    .line 910
    :cond_9
    move-object/from16 v0, v54

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x100000

    and-int/2addr v4, v6

    if-eqz v4, :cond_21

    const/16 v55, 0x1

    .line 912
    .local v55, "screenOn":Z
    :goto_f
    move/from16 v0, v55

    if-eq v0, v13, :cond_a

    .line 913
    if-eqz v55, :cond_22

    .line 914
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    move/from16 v68, v0

    sub-int v68, p2, v68

    move/from16 v0, v68

    int-to-float v0, v0

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 918
    :goto_10
    move/from16 v13, v55

    .line 921
    :cond_a
    move-object/from16 v0, v54

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x20000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_23

    const/16 v42, 0x1

    .line 923
    .local v42, "gpsOn":Z
    :goto_11
    move/from16 v0, v42

    if-eq v0, v14, :cond_b

    .line 924
    if-eqz v42, :cond_24

    .line 925
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move/from16 v68, v0

    sub-int v68, p2, v68

    move/from16 v0, v68

    int-to-float v0, v0

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 929
    :goto_12
    move/from16 v14, v42

    .line 932
    :cond_b
    move-object/from16 v0, v54

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x8000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_25

    const/16 v37, 0x1

    .line 934
    .local v37, "flashlightOn":Z
    :goto_13
    move/from16 v0, v37

    if-eq v0, v15, :cond_c

    .line 935
    if-eqz v37, :cond_26

    .line 936
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    move/from16 v68, v0

    sub-int v68, p2, v68

    move/from16 v0, v68

    int-to-float v0, v0

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 940
    :goto_14
    move/from16 v15, v37

    .line 943
    :cond_c
    move-object/from16 v0, v54

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x400000

    and-int/2addr v4, v6

    if-eqz v4, :cond_27

    const/16 v31, 0x1

    .line 945
    .local v31, "cameraOn":Z
    :goto_15
    move/from16 v0, v31

    move/from16 v1, v16

    if-eq v0, v1, :cond_d

    .line 946
    if-eqz v31, :cond_28

    .line 947
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    move/from16 v68, v0

    sub-int v68, p2, v68

    move/from16 v0, v68

    int-to-float v0, v0

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 951
    :goto_16
    move/from16 v16, v31

    .line 954
    :cond_d
    move-object/from16 v0, v54

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v4, v4, 0xf

    shr-int/lit8 v65, v4, 0x0

    .line 958
    .local v65, "wifiSupplState":I
    move/from16 v0, v51

    move/from16 v1, v65

    if-eq v0, v1, :cond_29

    .line 959
    move/from16 v51, v65

    .line 960
    packed-switch v65, :pswitch_data_0

    .line 970
    :pswitch_0
    const/16 v50, 0x1

    move/from16 v64, v50

    .line 976
    :goto_17
    move-object/from16 v0, v54

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x18010000

    and-int/2addr v4, v6

    if-eqz v4, :cond_e

    .line 979
    const/16 v64, 0x1

    .line 981
    :cond_e
    move/from16 v0, v64

    move/from16 v1, v17

    if-eq v0, v1, :cond_f

    .line 982
    if-eqz v64, :cond_2a

    .line 983
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move/from16 v68, v0

    sub-int v68, p2, v68

    move/from16 v0, v68

    int-to-float v0, v0

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 987
    :goto_18
    move/from16 v17, v64

    .line 990
    :cond_f
    move-object/from16 v0, v54

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, -0x80000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_2b

    const/16 v33, 0x1

    .line 992
    .local v33, "cpuRunning":Z
    :goto_19
    move/from16 v0, v33

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    .line 993
    if-eqz v33, :cond_2c

    .line 994
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    move/from16 v68, v0

    sub-int v68, p2, v68

    move/from16 v0, v68

    int-to-float v0, v0

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 998
    :goto_1a
    move/from16 v18, v33

    .line 1001
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v4, :cond_11

    .line 1003
    move-object/from16 v0, v54

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v4, v4, 0x1c0

    shr-int/lit8 v4, v4, 0x6

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2d

    .line 1006
    const/16 v23, 0x0

    .line 1014
    .local v23, "bin":I
    :goto_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, v23

    invoke-virtual {v4, v5, v0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->addTick(II)V

    .line 1046
    .end local v23    # "bin":I
    .end local v31    # "cameraOn":Z
    .end local v32    # "charging":Z
    .end local v33    # "cpuRunning":Z
    .end local v37    # "flashlightOn":Z
    .end local v42    # "gpsOn":Z
    .end local v55    # "screenOn":Z
    .end local v65    # "wifiSupplState":I
    :cond_11
    :goto_1c
    add-int/lit8 v43, v43, 0x1

    move/from16 v66, v5

    .end local v5    # "x":I
    .restart local v66    # "x":I
    goto/16 :goto_9

    .line 745
    .end local v7    # "levelh":I
    .end local v8    # "startX":I
    .end local v9    # "lastY":I
    .end local v10    # "curLevelPath":Landroid/graphics/Path;
    .end local v11    # "lastX":I
    .end local v17    # "lastWifiRunning":Z
    .end local v18    # "lastCpuRunning":Z
    .end local v19    # "lastLinePath":Landroid/graphics/Path;
    .end local v20    # "N":I
    .end local v21    # "batChange":I
    .end local v22    # "batLow":I
    .end local v34    # "curWalltime":J
    .end local v43    # "i":I
    .end local v46    # "lastRealtime":J
    .end local v50    # "lastWifiSupplRunning":Z
    .end local v51    # "lastWifiSupplState":I
    .end local v52    # "levelWidth":I
    .end local v54    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v60    # "walltimeChange":J
    .end local v62    # "walltimeStart":J
    .end local v66    # "x":I
    .end local v67    # "y":I
    :cond_12
    div-int/lit8 v4, v58, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    goto/16 :goto_1

    .line 748
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 749
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    goto/16 :goto_1

    .line 781
    .restart local v40    # "fullBarOffset":I
    .restart local v52    # "levelWidth":I
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 782
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 783
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 784
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 785
    :cond_18
    const/16 v40, 0x0

    goto/16 :goto_6

    .line 791
    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 794
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v4, v4, 0x4

    add-int v4, v4, v40

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 795
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v4, :cond_3

    .line 796
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    goto/16 :goto_7

    .line 817
    .end local v40    # "fullBarOffset":I
    .restart local v62    # "walltimeStart":J
    :cond_1a
    const-wide/16 v60, 0x1

    goto/16 :goto_8

    .line 871
    .restart local v5    # "x":I
    .restart local v7    # "levelh":I
    .restart local v8    # "startX":I
    .restart local v9    # "lastY":I
    .restart local v10    # "curLevelPath":Landroid/graphics/Path;
    .restart local v11    # "lastX":I
    .restart local v17    # "lastWifiRunning":Z
    .restart local v18    # "lastCpuRunning":Z
    .restart local v19    # "lastLinePath":Landroid/graphics/Path;
    .restart local v20    # "N":I
    .restart local v21    # "batChange":I
    .restart local v22    # "batLow":I
    .restart local v34    # "curWalltime":J
    .restart local v43    # "i":I
    .restart local v46    # "lastRealtime":J
    .restart local v50    # "lastWifiSupplRunning":Z
    .restart local v51    # "lastWifiSupplState":I
    .restart local v54    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v59    # "value":B
    .restart local v60    # "walltimeChange":J
    .restart local v67    # "y":I
    :cond_1b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    move/from16 v0, v59

    if-gt v0, v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v53, v0

    .restart local v53    # "path":Landroid/graphics/Path;
    goto/16 :goto_a

    .line 872
    .end local v53    # "path":Landroid/graphics/Path;
    :cond_1c
    const/16 v53, 0x0

    .restart local v53    # "path":Landroid/graphics/Path;
    goto/16 :goto_a

    .line 882
    :cond_1d
    if-eqz v53, :cond_7

    .line 883
    int-to-float v4, v5

    move/from16 v0, v67

    int-to-float v6, v0

    move-object/from16 v0, v53

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_b

    .line 891
    :cond_1e
    int-to-float v4, v5

    move/from16 v0, v67

    int-to-float v6, v0

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_c

    .line 899
    .end local v53    # "path":Landroid/graphics/Path;
    .end local v59    # "value":B
    :cond_1f
    const/16 v32, 0x0

    goto/16 :goto_d

    .line 905
    .restart local v32    # "charging":Z
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    move/from16 v68, v0

    sub-int v68, p2, v68

    move/from16 v0, v68

    int-to-float v0, v0

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_e

    .line 910
    :cond_21
    const/16 v55, 0x0

    goto/16 :goto_f

    .line 916
    .restart local v55    # "screenOn":Z
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    move/from16 v68, v0

    sub-int v68, p2, v68

    move/from16 v0, v68

    int-to-float v0, v0

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_10

    .line 921
    :cond_23
    const/16 v42, 0x0

    goto/16 :goto_11

    .line 927
    .restart local v42    # "gpsOn":Z
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move/from16 v68, v0

    sub-int v68, p2, v68

    move/from16 v0, v68

    int-to-float v0, v0

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_12

    .line 932
    :cond_25
    const/16 v37, 0x0

    goto/16 :goto_13

    .line 938
    .restart local v37    # "flashlightOn":Z
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    move/from16 v68, v0

    sub-int v68, p2, v68

    move/from16 v0, v68

    int-to-float v0, v0

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_14

    .line 943
    :cond_27
    const/16 v31, 0x0

    goto/16 :goto_15

    .line 949
    .restart local v31    # "cameraOn":Z
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    move/from16 v68, v0

    sub-int v68, p2, v68

    move/from16 v0, v68

    int-to-float v0, v0

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_16

    .line 967
    .restart local v65    # "wifiSupplState":I
    :pswitch_1
    const/16 v50, 0x0

    move/from16 v64, v50

    .line 968
    .local v64, "wifiRunning":I
    goto/16 :goto_17

    .line 974
    .end local v64    # "wifiRunning":I
    :cond_29
    move/from16 v64, v50

    .local v64, "wifiRunning":Z
    goto/16 :goto_17

    .line 985
    .end local v64    # "wifiRunning":Z
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move/from16 v68, v0

    sub-int v68, p2, v68

    move/from16 v0, v68

    int-to-float v0, v0

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_18

    .line 990
    :cond_2b
    const/16 v33, 0x0

    goto/16 :goto_19

    .line 996
    .restart local v33    # "cpuRunning":Z
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    move/from16 v68, v0

    sub-int v68, p2, v68

    move/from16 v0, v68

    int-to-float v0, v0

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1a

    .line 1007
    :cond_2d
    move-object/from16 v0, v54

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x200000

    and-int/2addr v4, v6

    if-eqz v4, :cond_2e

    .line 1008
    const/16 v23, 0x1

    .restart local v23    # "bin":I
    goto/16 :goto_1b

    .line 1010
    .end local v23    # "bin":I
    :cond_2e
    move-object/from16 v0, v54

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v4, v4, 0x38

    shr-int/lit8 v23, v4, 0x3

    .line 1012
    .restart local v23    # "bin":I
    add-int/lit8 v23, v23, 0x2

    goto/16 :goto_1b

    .line 1019
    .end local v5    # "x":I
    .end local v23    # "bin":I
    .end local v31    # "cameraOn":Z
    .end local v32    # "charging":Z
    .end local v33    # "cpuRunning":Z
    .end local v37    # "flashlightOn":Z
    .end local v42    # "gpsOn":Z
    .end local v55    # "screenOn":Z
    .end local v65    # "wifiSupplState":I
    .restart local v66    # "x":I
    :cond_2f
    move-wide/from16 v48, v34

    .line 1020
    .local v48, "lastWalltime":J
    move-object/from16 v0, v54

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x5

    if-eq v4, v6, :cond_30

    move-object/from16 v0, v54

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x7

    if-ne v4, v6, :cond_31

    .line 1022
    :cond_30
    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v68, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v70, v0

    cmp-long v4, v68, v70

    if-ltz v4, :cond_33

    .line 1023
    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v34, v0

    .line 1027
    :goto_1d
    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v46, v0

    .line 1030
    :cond_31
    move-object/from16 v0, v54

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x6

    if-eq v4, v6, :cond_47

    move-object/from16 v0, v54

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x5

    if-ne v4, v6, :cond_32

    sub-long v68, v48, v34

    invoke-static/range {v68 .. v69}, Ljava/lang/Math;->abs(J)J

    move-result-wide v68

    const-wide/32 v70, 0x36ee80

    cmp-long v4, v68, v70

    if-lez v4, :cond_47

    .line 1033
    :cond_32
    if-eqz v10, :cond_47

    .line 1034
    add-int/lit8 v5, v66, 0x1

    move-object/from16 v4, p0

    move/from16 v6, p2

    invoke-virtual/range {v4 .. v19}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZZZLandroid/graphics/Path;)V

    .line 1037
    const/4 v9, -0x1

    move v11, v9

    .line 1038
    const/4 v10, 0x0

    .line 1039
    const/16 v19, 0x0

    .line 1040
    const/16 v18, 0x0

    move/from16 v16, v18

    .local v16, "lastCameraOn":I
    move/from16 v15, v18

    .local v15, "lastFlashlightOn":I
    move/from16 v14, v18

    .local v14, "lastGpsOn":I
    move/from16 v13, v18

    .local v13, "lastScreenOn":I
    move/from16 v12, v18

    .local v12, "lastCharging":I
    move/from16 v5, v66

    .end local v66    # "x":I
    .restart local v5    # "x":I
    goto/16 :goto_1c

    .line 1025
    .end local v5    # "x":I
    .end local v12    # "lastCharging":I
    .end local v13    # "lastScreenOn":I
    .end local v14    # "lastGpsOn":I
    .end local v15    # "lastFlashlightOn":I
    .end local v16    # "lastCameraOn":I
    .restart local v66    # "x":I
    :cond_33
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v68, v0

    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v70, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v72, v0

    sub-long v70, v70, v72

    add-long v34, v68, v70

    goto :goto_1d

    .line 1048
    .end local v48    # "lastWalltime":J
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v4}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    move/from16 v5, v66

    .line 1050
    .end local v54    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v66    # "x":I
    .restart local v5    # "x":I
    :cond_35
    const-string v4, "BatteryHistoryChart"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "zhuyang--onDraw--lastY: "

    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const-string v4, "BatteryHistoryChart"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "zhuyang--onDraw--lastX: "

    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    if-ltz v9, :cond_36

    if-gez v11, :cond_42

    .line 1054
    :cond_36
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move v5, v11

    .line 1055
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    sub-int v6, v6, v22

    add-int/lit8 v68, v7, -0x1

    mul-int v6, v6, v68

    div-int v6, v6, v21

    sub-int v9, v4, v6

    move/from16 v67, v9

    .line 1057
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    int-to-byte v0, v4

    move/from16 v59, v0

    .line 1058
    .restart local v59    # "value":B
    const-string v4, "BatteryHistoryChart"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "zhuyang--onDraw--mBatteryLevel: "

    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    const-string v4, "BatteryHistoryChart"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "zhuyang--onDraw--mBatteryCriticalLevel: "

    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const-string v4, "BatteryHistoryChart"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "zhuyang--onDraw--mBatteryWarnLevel: "

    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    move/from16 v0, v59

    if-gt v0, v4, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v53, v0

    .line 1064
    .restart local v53    # "path":Landroid/graphics/Path;
    :goto_1e
    if-eqz v53, :cond_37

    .line 1065
    int-to-float v4, v5

    move/from16 v0, v67

    int-to-float v6, v0

    move-object/from16 v0, v53

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1066
    move-object/from16 v19, v53

    .line 1068
    :cond_37
    const-string v4, "BatteryHistoryChart"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "zhuyang--onDraw--moveTo: x="

    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v68, "--y="

    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v67

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move/from16 v0, v67

    int-to-float v0, v0

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 1071
    move/from16 v5, p1

    .end local v53    # "path":Landroid/graphics/Path;
    .end local v59    # "value":B
    :goto_1f
    move-object/from16 v4, p0

    move/from16 v6, p2

    .line 1081
    invoke-virtual/range {v4 .. v19}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZZZLandroid/graphics/Path;)V

    .line 1085
    move/from16 v0, p1

    if-ge v5, v0, :cond_38

    .line 1088
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    int-to-float v6, v5

    int-to-float v0, v9

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1089
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    rsub-int/lit8 v6, v22, 0x64

    add-int/lit8 v68, v7, -0x1

    mul-int v6, v6, v68

    div-int v6, v6, v21

    sub-int v41, v4, v6

    .line 1090
    .local v41, "fullY":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    rsub-int/lit8 v6, v22, 0x0

    add-int/lit8 v68, v7, -0x1

    mul-int v6, v6, v68

    div-int v6, v6, v21

    sub-int v36, v4, v6

    .line 1091
    .local v36, "emptyY":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDischarging:Z

    if-eqz v4, :cond_44

    .line 1092
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v6, v6

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1097
    :goto_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 1101
    .end local v36    # "emptyY":I
    .end local v41    # "fullY":I
    :cond_38
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v68, v0

    const-wide/16 v70, 0x0

    cmp-long v4, v68, v70

    if-lez v4, :cond_3f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v68, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v70, v0

    cmp-long v4, v68, v70

    if-lez v4, :cond_3f

    .line 1103
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->is24Hour()Z

    move-result v44

    .line 1104
    .local v44, "is24hr":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v30

    .line 1105
    .local v30, "calStart":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v68, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v68

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1106
    const/16 v4, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1107
    const/16 v4, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1108
    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1109
    invoke-virtual/range {v30 .. v30}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v56

    .line 1110
    .local v56, "startRoundTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v68, v0

    cmp-long v4, v56, v68

    if-gez v4, :cond_39

    .line 1111
    const/16 v4, 0xb

    const/16 v6, 0xb

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1112
    invoke-virtual/range {v30 .. v30}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v56

    .line 1114
    :cond_39
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v26

    .line 1115
    .local v26, "calEnd":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v68, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v68

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1116
    const/16 v4, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1117
    const/16 v4, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1118
    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1119
    invoke-virtual/range {v26 .. v26}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v38

    .line 1120
    .local v38, "endRoundTime":J
    cmp-long v4, v56, v38

    if-gez v4, :cond_3b

    .line 1121
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v44

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v27

    .line 1123
    .local v27, "calMid":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v68, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v70, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v72, v0

    sub-long v70, v70, v72

    const-wide/16 v72, 0x2

    div-long v70, v70, v72

    add-long v68, v68, v70

    move-object/from16 v0, v27

    move-wide/from16 v1, v68

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1124
    const/16 v4, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1125
    const/16 v4, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1126
    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1127
    invoke-virtual/range {v27 .. v27}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    .line 1128
    .local v28, "calMidMillis":J
    cmp-long v4, v28, v56

    if-lez v4, :cond_3a

    cmp-long v4, v28, v38

    if-gez v4, :cond_3a

    .line 1129
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v44

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1131
    :cond_3a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v44

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1135
    .end local v27    # "calMid":Ljava/util/Calendar;
    .end local v28    # "calMidMillis":J
    :cond_3b
    const/4 v4, 0x6

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v4, v6, :cond_3c

    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eq v4, v6, :cond_3f

    .line 1137
    :cond_3c
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->isDayFirst()Z

    move-result v45

    .line 1138
    .local v45, "isDayFirst":Z
    const/16 v4, 0xb

    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1139
    invoke-virtual/range {v30 .. v30}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v56

    .line 1140
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v68, v0

    cmp-long v4, v56, v68

    if-gez v4, :cond_3d

    .line 1141
    const/4 v4, 0x6

    const/4 v6, 0x6

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1142
    invoke-virtual/range {v30 .. v30}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v56

    .line 1144
    :cond_3d
    const/16 v4, 0xb

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1145
    invoke-virtual/range {v26 .. v26}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v38

    .line 1146
    cmp-long v4, v56, v38

    if-gez v4, :cond_3e

    .line 1147
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v45

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1148
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v27

    .line 1149
    .restart local v27    # "calMid":Ljava/util/Calendar;
    sub-long v68, v38, v56

    const-wide/16 v70, 0x2

    div-long v68, v68, v70

    add-long v68, v68, v56

    move-object/from16 v0, v27

    move-wide/from16 v1, v68

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1150
    const/16 v4, 0xb

    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1151
    invoke-virtual/range {v27 .. v27}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    .line 1152
    .restart local v28    # "calMidMillis":J
    cmp-long v4, v28, v56

    if-lez v4, :cond_3e

    cmp-long v4, v28, v38

    if-gez v4, :cond_3e

    .line 1153
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v45

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1156
    .end local v27    # "calMid":Ljava/util/Calendar;
    .end local v28    # "calMidMillis":J
    :cond_3e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v45

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1160
    .end local v26    # "calEnd":Ljava/util/Calendar;
    .end local v30    # "calStart":Ljava/util/Calendar;
    .end local v38    # "endRoundTime":J
    .end local v44    # "is24hr":Z
    .end local v45    # "isDayFirst":Z
    .end local v56    # "startRoundTime":J
    :cond_3f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x2

    if-ge v4, v6, :cond_46

    .line 1164
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v68, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v70, v0

    sub-long v24, v68, v70

    .line 1165
    .local v24, "btw":J
    const-wide/16 v68, 0x0

    cmp-long v4, v24, v68

    if-lez v4, :cond_45

    .line 1166
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v4

    move-wide/from16 v0, v24

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 1167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    goto/16 :goto_0

    .line 1062
    .end local v24    # "btw":J
    .restart local v59    # "value":B
    :cond_40
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    move/from16 v0, v59

    if-gt v0, v4, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v53, v0

    .restart local v53    # "path":Landroid/graphics/Path;
    goto/16 :goto_1e

    .line 1063
    .end local v53    # "path":Landroid/graphics/Path;
    :cond_41
    const/16 v53, 0x0

    .restart local v53    # "path":Landroid/graphics/Path;
    goto/16 :goto_1e

    .line 1074
    .end local v53    # "path":Landroid/graphics/Path;
    .end local v59    # "value":B
    :cond_42
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    move-wide/from16 v68, v0

    sub-long v68, v68, v62

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v70, v0

    mul-long v68, v68, v70

    div-long v68, v68, v60

    move-wide/from16 v0, v68

    long-to-int v6, v0

    add-int v5, v4, v6

    .line 1075
    if-gez v5, :cond_43

    .line 1076
    const/4 v5, 0x0

    .line 1078
    :cond_43
    const-string v4, "BatteryHistoryChart"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "zhuyang--onDraw--x: "

    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1094
    .restart local v36    # "emptyY":I
    .restart local v41    # "fullY":I
    :cond_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v6, v6

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v6, v6

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_20

    .line 1169
    .end local v36    # "emptyY":I
    .end local v41    # "fullY":I
    .restart local v24    # "btw":J
    :cond_45
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 1170
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    goto/16 :goto_0

    .line 1173
    .end local v24    # "btw":J
    :cond_46
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 1174
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    goto/16 :goto_0

    .end local v5    # "x":I
    .restart local v48    # "lastWalltime":J
    .restart local v54    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v66    # "x":I
    :cond_47
    move/from16 v5, v66

    .end local v66    # "x":I
    .restart local v5    # "x":I
    goto/16 :goto_1c

    .line 960
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method setStats(Landroid/os/BatteryStats;Landroid/content/Intent;)V
    .locals 38
    .param p1, "stats"    # Landroid/os/BatteryStats;
    .param p2, "broadcast"    # Landroid/content/Intent;

    .prologue
    .line 490
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    .line 491
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    .line 493
    const-string v29, "BatteryHistoryChart"

    const-string v32, "Setting stats..."

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    mul-long v12, v32, v34

    .line 497
    .local v12, "elapsedRealtimeUs":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v29, v0

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v12, v13, v1}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v30

    .line 499
    .local v30, "uSecTime":J
    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStatsPeriod:J

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0c092a

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0c092b

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0c092c

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0c092d

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnLabel:Ljava/lang/String;

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0c092e

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnLabel:Ljava/lang/String;

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0c092f

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0c0930

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningLabel:Ljava/lang/String;

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0c0931

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    .line 509
    const/16 v29, 0x64

    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    .line 510
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    .line 513
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v6

    .line 514
    .local v6, "batteryPercentString":Ljava/lang/String;
    const-wide/16 v24, 0x0

    .line 515
    .local v24, "remainingTimeUs":J
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDischarging:Z

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v29, v0

    const-string v32, "plugged"

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    if-nez v29, :cond_9

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v10

    .line 518
    .local v10, "drainTime":J
    const-wide/16 v32, 0x0

    cmp-long v29, v10, v32

    if-lez v29, :cond_8

    .line 519
    move-wide/from16 v24, v10

    .line 520
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const-wide/16 v32, 0x3e8

    div-long v32, v10, v32

    move-object/from16 v0, v29

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    .line 522
    .local v28, "timeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    .line 571
    .end local v10    # "drainTime":J
    .end local v28    # "timeString":Ljava/lang/String;
    :goto_0
    const-string v29, ""

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    .line 572
    const-string v29, ""

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 575
    const/16 v21, 0x0

    .line 576
    .local v21, "pos":I
    const/4 v14, 0x0

    .line 577
    .local v14, "lastInteresting":I
    const/4 v15, -0x1

    .line 578
    .local v15, "lastLevel":B
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLow:I

    .line 579
    const/16 v29, 0x64

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    .line 580
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 581
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    .line 582
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    .line 583
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistStart:J

    .line 584
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 585
    const-wide/16 v18, 0x0

    .line 586
    .local v18, "lastWallTime":J
    const-wide/16 v16, 0x0

    .line 587
    .local v16, "lastRealtime":J
    const/4 v4, 0x0

    .line 588
    .local v4, "aggrStates":I
    const/4 v5, 0x0

    .line 589
    .local v5, "aggrStates2":I
    const/4 v7, 0x1

    .line 590
    .local v7, "first":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v29

    if-eqz v29, :cond_e

    .line 591
    new-instance v22, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v22 .. v22}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 592
    .local v22, "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_0
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 593
    add-int/lit8 v21, v21, 0x1

    .line 594
    if-eqz v7, :cond_1

    .line 595
    const/4 v7, 0x0

    .line 596
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistStart:J

    .line 598
    :cond_1
    move-object/from16 v0, v22

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v29, v0

    const/16 v32, 0x5

    move/from16 v0, v29

    move/from16 v1, v32

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v22

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v29, v0

    const/16 v32, 0x7

    move/from16 v0, v29

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    .line 608
    :cond_2
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v32, v0

    const-wide v34, 0x39ef8b000L

    add-long v34, v34, v18

    cmp-long v29, v32, v34

    if-gtz v29, :cond_3

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v34, v0

    const-wide/32 v36, 0x493e0

    add-long v34, v34, v36

    cmp-long v29, v32, v34

    if-gez v29, :cond_4

    .line 610
    :cond_3
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 612
    :cond_4
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v18, v0

    .line 613
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v16, v0

    .line 614
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v29, v32, v34

    if-nez v29, :cond_5

    .line 615
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v32, v0

    sub-long v32, v16, v32

    sub-long v32, v18, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 618
    :cond_5
    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v29

    if-eqz v29, :cond_0

    .line 619
    move-object/from16 v0, v22

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v29, v0

    move/from16 v0, v29

    if-ne v0, v15, :cond_6

    const/16 v29, 0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 620
    :cond_6
    move-object/from16 v0, v22

    iget-byte v15, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 622
    :cond_7
    move/from16 v14, v21

    .line 623
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistDataEnd:J

    .line 624
    move-object/from16 v0, v22

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v29, v0

    or-int v4, v4, v29

    .line 625
    move-object/from16 v0, v22

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move/from16 v29, v0

    or-int v5, v5, v29

    goto/16 :goto_1

    .line 527
    .end local v4    # "aggrStates":I
    .end local v5    # "aggrStates2":I
    .end local v7    # "first":Z
    .end local v14    # "lastInteresting":I
    .end local v15    # "lastLevel":B
    .end local v16    # "lastRealtime":J
    .end local v18    # "lastWallTime":J
    .end local v21    # "pos":I
    .end local v22    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v10    # "drainTime":J
    :cond_8
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    goto/16 :goto_0

    .line 530
    .end local v10    # "drainTime":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v8

    .line 531
    .local v8, "chargeTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v32, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v27

    .line 533
    .local v27, "statusLabel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v29, v0

    const-string v32, "status"

    const/16 v33, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 535
    .local v26, "status":I
    const-string v29, "BatteryHistoryChart"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "zhuyang--chargeTime:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string v29, "BatteryHistoryChart"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "zhuyang--status:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-string v29, "BatteryHistoryChart"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "zhuyang--mBatteryLevel:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    move/from16 v29, v0

    const/16 v32, 0x64

    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_d

    const/16 v29, 0x5

    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_d

    .line 540
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDischarging:Z

    .line 541
    move-wide/from16 v24, v8

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const-wide/16 v32, 0x3e8

    div-long v32, v8, v32

    move-object/from16 v0, v29

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    .line 544
    .restart local v28    # "timeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v29, v0

    const-string v32, "plugged"

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 546
    .local v20, "plugType":I
    const/16 v29, 0x1

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 547
    const v23, 0x7f0c0922

    .line 559
    .local v23, "resId":I
    :goto_2
    const v23, 0x7f0c0920

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v6, v32, v33

    const/16 v33, 0x1

    aput-object v27, v32, v33

    move-object/from16 v0, v29

    move/from16 v1, v23

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    goto/16 :goto_0

    .line 548
    .end local v23    # "resId":I
    :cond_a
    const/16 v29, 0x2

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 549
    const v23, 0x7f0c0923

    .restart local v23    # "resId":I
    goto :goto_2

    .line 550
    .end local v23    # "resId":I
    :cond_b
    const/16 v29, 0x4

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 551
    const v23, 0x7f0c0924

    .restart local v23    # "resId":I
    goto :goto_2

    .line 553
    .end local v23    # "resId":I
    :cond_c
    const v23, 0x7f0c0921

    .restart local v23    # "resId":I
    goto :goto_2

    .line 567
    .end local v20    # "plugType":I
    .end local v23    # "resId":I
    .end local v28    # "timeString":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v32, 0x7f0c0920

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v6, v33, v34

    const/16 v34, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0c02cd

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, v29

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    goto/16 :goto_0

    .line 629
    .end local v8    # "chargeTime":J
    .end local v26    # "status":I
    .end local v27    # "statusLabel":Ljava/lang/String;
    .restart local v4    # "aggrStates":I
    .restart local v5    # "aggrStates2":I
    .restart local v7    # "first":Z
    .restart local v14    # "lastInteresting":I
    .restart local v15    # "lastLevel":B
    .restart local v16    # "lastRealtime":J
    .restart local v18    # "lastWallTime":J
    .restart local v21    # "pos":I
    :cond_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistDataEnd:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x3e8

    div-long v34, v24, v34

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 630
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistDataEnd:J

    move-wide/from16 v32, v0

    add-long v32, v32, v18

    sub-long v32, v32, v16

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    .line 631
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x3e8

    div-long v34, v24, v34

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    .line 632
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mNumHist:I

    .line 633
    const/high16 v29, 0x20000000

    and-int v29, v29, v4

    if-eqz v29, :cond_12

    const/16 v29, 0x1

    :goto_3
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    .line 634
    const/high16 v29, 0x8000000

    and-int v29, v29, v5

    if-eqz v29, :cond_13

    const/16 v29, 0x1

    :goto_4
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    .line 635
    const/high16 v29, 0x400000

    and-int v29, v29, v5

    if-eqz v29, :cond_14

    const/16 v29, 0x1

    :goto_5
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    .line 636
    const/high16 v29, 0x20000000

    and-int v29, v29, v5

    if-nez v29, :cond_f

    const/high16 v29, 0x18010000

    and-int v29, v29, v4

    if-eqz v29, :cond_15

    :cond_f
    const/16 v29, 0x1

    :goto_6
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    .line 640
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v29

    if-nez v29, :cond_10

    .line 641
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    .line 643
    :cond_10
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v34, v0

    cmp-long v29, v32, v34

    if-gtz v29, :cond_11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x1

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 644
    :cond_11
    return-void

    .line 633
    :cond_12
    const/16 v29, 0x0

    goto :goto_3

    .line 634
    :cond_13
    const/16 v29, 0x0

    goto :goto_4

    .line 635
    :cond_14
    const/16 v29, 0x0

    goto :goto_5

    .line 636
    :cond_15
    const/16 v29, 0x0

    goto :goto_6
.end method
