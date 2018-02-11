.class public Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;
.super Landroid/view/View;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;,
        Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;,
        Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;,
        Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;
    }
.end annotation


# static fields
.field static final CHART_DATA_BIN_MASK:I = -0x10000

.field static final CHART_DATA_BIN_SHIFT:I = 0x10

.field static final CHART_DATA_X_MASK:I = 0xffff

.field static final DEBUG:Z = false

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

.field mInfo:Lcom/android/settings_exlib/BatteryInfo;

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
    .line 354
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    .line 126
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    .line 127
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    .line 128
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    .line 129
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    .line 130
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    .line 131
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    .line 132
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    .line 133
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    .line 134
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    .line 135
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    .line 136
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    .line 137
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    .line 138
    new-instance v13, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-direct {v13}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;

    .line 139
    new-instance v13, Landroid/text/TextPaint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 140
    new-instance v13, Landroid/text/TextPaint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    .line 141
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    .line 143
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 144
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    .line 145
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    .line 146
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    .line 147
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    .line 148
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    .line 149
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    .line 150
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    .line 151
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    .line 152
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    .line 153
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    .line 154
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    .line 155
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    .line 195
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    .line 196
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    .line 229
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    .line 230
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    .line 358
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 359
    const v14, 0x10e0058

    .line 358
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    .line 360
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 361
    const v14, 0x10e0056

    .line 360
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    .line 364
    const/high16 v13, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 363
    const/4 v15, 0x1

    invoke-static {v15, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

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

    .line 396
    sget-object v13, Lcom/android/settings_ex/R$styleable;->BatteryHistoryChart:[I

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 395
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

    goto :goto_1

    .line 416
    :pswitch_2
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    goto :goto_1

    .line 420
    :pswitch_3
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    goto :goto_1

    .line 424
    :pswitch_4
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

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

    .line 481
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    aput v16, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    aput v16, v15, v17

    const/16 v16, 0x0

    .line 480
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

    .line 353
    :cond_2
    return-void

    .line 410
    nop

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
    .line 648
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isDayFirst()Z
    .locals 3

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    .line 653
    const/4 v2, 0x3

    .line 652
    invoke-virtual {v1, v2}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 654
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
    .line 1114
    iget-wide v4, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 1115
    .local v4, "walltimeStart":J
    iget-wide v6, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    sub-long v2, v6, v4

    .line 1116
    .local v2, "walltimeChange":J
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;

    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1117
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    sub-int v9, p3, p2

    int-to-long v12, v9

    mul-long/2addr v10, v12

    div-long/2addr v10, v2

    long-to-int v9, v10

    add-int v9, v9, p2

    .line 1116
    move/from16 v0, p4

    invoke-direct {v7, v8, v9, p1, v0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;-><init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1113
    return-void
.end method

.method addTimeLabel(Ljava/util/Calendar;IIZ)V
    .locals 14
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "levelLeft"    # I
    .param p3, "levelRight"    # I
    .param p4, "is24hr"    # Z

    .prologue
    .line 1105
    iget-wide v4, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 1106
    .local v4, "walltimeStart":J
    iget-wide v6, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    sub-long v2, v6, v4

    .line 1107
    .local v2, "walltimeChange":J
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;

    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1108
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    sub-int v9, p3, p2

    int-to-long v12, v9

    mul-long/2addr v10, v12

    div-long/2addr v10, v2

    long-to-int v9, v10

    add-int v9, v9, p2

    .line 1107
    move/from16 v0, p4

    invoke-direct {v7, v8, v9, p1, v0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;-><init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1104
    return-void
.end method

.method buildBitmap(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1137
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

    .line 1138
    return-void

    .line 1143
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1144
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1143
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    .line 1145
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCanvas:Landroid/graphics/Canvas;

    .line 1146
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->drawChart(Landroid/graphics/Canvas;II)V

    .line 1136
    return-void
.end method

.method drawChart(Landroid/graphics/Canvas;II)V
    .locals 30
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1150
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->isLayoutRtl()Z

    move-result v16

    .line 1151
    .local v16, "layoutRtl":Z
    if-eqz v16, :cond_3

    move/from16 v23, p2

    .line 1152
    .local v23, "textStartX":I
    :goto_0
    if-eqz v16, :cond_4

    const/16 v22, 0x0

    .line 1153
    .local v22, "textEndX":I
    :goto_1
    if-eqz v16, :cond_5

    sget-object v20, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 1154
    .local v20, "textAlignLeft":Landroid/graphics/Paint$Align;
    :goto_2
    if-eqz v16, :cond_6

    sget-object v21, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 1161
    .local v21, "textAlignRight":Landroid/graphics/Paint$Align;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1166
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_a

    .line 1167
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x4

    add-int v26, v2, v3

    .line 1168
    .local v26, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int v28, v2, v3

    .line 1169
    .local v28, "ytick":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1170
    const/4 v15, 0x0

    .line 1171
    .local v15, "lastX":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_b

    .line 1172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;

    .line 1173
    .local v13, "label":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;
    if-nez v11, :cond_7

    .line 1174
    iget v2, v13, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v3, v13, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int v25, v2, v3

    .line 1175
    .local v25, "x":I
    if-gez v25, :cond_1

    .line 1176
    const/16 v25, 0x0

    .line 1179
    :cond_1
    iget-object v2, v13, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v25

    int-to-float v3, v0

    move/from16 v0, v26

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1180
    iget v2, v13, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v3, v2

    move/from16 v0, v28

    int-to-float v4, v0

    iget v2, v13, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int v2, v2, v28

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1181
    iget v2, v13, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v15, v25, v2

    .line 1171
    :cond_2
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1151
    .end local v11    # "i":I
    .end local v13    # "label":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;
    .end local v15    # "lastX":I
    .end local v20    # "textAlignLeft":Landroid/graphics/Paint$Align;
    .end local v21    # "textAlignRight":Landroid/graphics/Paint$Align;
    .end local v22    # "textEndX":I
    .end local v23    # "textStartX":I
    .end local v25    # "x":I
    .end local v26    # "y":I
    .end local v28    # "ytick":I
    :cond_3
    const/16 v23, 0x0

    .restart local v23    # "textStartX":I
    goto/16 :goto_0

    .line 1152
    :cond_4
    move/from16 v22, p2

    .restart local v22    # "textEndX":I
    goto/16 :goto_1

    .line 1153
    :cond_5
    sget-object v20, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .restart local v20    # "textAlignLeft":Landroid/graphics/Paint$Align;
    goto/16 :goto_2

    .line 1154
    :cond_6
    sget-object v21, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .restart local v21    # "textAlignRight":Landroid/graphics/Paint$Align;
    goto/16 :goto_3

    .line 1182
    .restart local v11    # "i":I
    .restart local v13    # "label":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;
    .restart local v15    # "lastX":I
    .restart local v26    # "y":I
    .restart local v28    # "ytick":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v11, v2, :cond_8

    .line 1183
    iget v2, v13, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v3, v13, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int v25, v2, v3

    .line 1184
    .restart local v25    # "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    add-int/2addr v2, v15

    move/from16 v0, v25

    if-lt v0, v2, :cond_2

    .line 1187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;

    .line 1188
    .local v18, "nextLabel":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v2, v3

    move/from16 v0, v25

    if-gt v0, v2, :cond_2

    .line 1192
    iget-object v2, v13, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v25

    int-to-float v3, v0

    move/from16 v0, v26

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1193
    iget v2, v13, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v3, v2

    move/from16 v0, v28

    int-to-float v4, v0

    iget v2, v13, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int v2, v2, v28

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1194
    iget v2, v13, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v15, v25, v2

    goto :goto_5

    .line 1196
    .end local v18    # "nextLabel":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;
    .end local v25    # "x":I
    :cond_8
    iget v2, v13, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v3, v13, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int v25, v2, v3

    .line 1197
    .restart local v25    # "x":I
    iget v2, v13, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v2, v2, v25

    move/from16 v0, p2

    if-lt v2, v0, :cond_9

    .line 1198
    add-int/lit8 v2, p2, -0x1

    iget v3, v13, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    sub-int v25, v2, v3

    .line 1201
    :cond_9
    iget-object v2, v13, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v25

    int-to-float v3, v0

    move/from16 v0, v26

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1202
    iget v2, v13, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v3, v2

    move/from16 v0, v28

    int-to-float v4, v0

    iget v2, v13, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int v2, v2, v28

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 1205
    .end local v11    # "i":I
    .end local v13    # "label":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;
    .end local v15    # "lastX":I
    .end local v25    # "x":I
    .end local v26    # "y":I
    .end local v28    # "ytick":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 1206
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x4

    add-int v26, v2, v3

    .line 1207
    .restart local v26    # "y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 1209
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

    .line 1210
    move/from16 v0, v26

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1208
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1213
    .end local v26    # "y":I
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

    .line 1214
    .local v10, "headerTop":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings_exlib/BatteryInfo;

    iget-object v2, v2, Lcom/android/settings_exlib/BatteryInfo;->mChargeLabelString:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v3, v0

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1217
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    div-int/lit8 v19, v2, 0x2

    .line 1218
    .local v19, "stringHalfWidth":I
    if-eqz v16, :cond_c

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    .line 1219
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v3, v2, 0x2

    .line 1220
    if-eqz v16, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    .line 1219
    :goto_6
    add-int v9, v3, v2

    .line 1222
    .local v9, "headerCenter":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    sub-int v3, v9, v19

    int-to-float v3, v3

    int-to-float v4, v10

    .line 1223
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    .line 1222
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1232
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1236
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1240
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_10

    .line 1242
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v2, p3, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v24, v2, v3

    .line 1243
    .local v24, "top":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->draw(Landroid/graphics/Canvas;II)V

    .line 1245
    .end local v24    # "top":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1249
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1253
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v2, :cond_13

    .line 1254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1259
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    if-eqz v2, :cond_14

    .line 1260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1265
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    if-eqz v2, :cond_15

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1271
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v2, :cond_16

    .line 1272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1277
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 1279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1282
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v2, :cond_1d

    .line 1284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v8

    .line 1285
    .local v8, "align":Landroid/graphics/Paint$Align;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1286
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_18

    .line 1287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v3, v0

    .line 1288
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1287
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1290
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v2, :cond_19

    .line 1291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v3, v0

    .line 1292
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1291
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1294
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    if-eqz v2, :cond_1a

    .line 1295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnLabel:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v3, v0

    .line 1296
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1295
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1298
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    if-eqz v2, :cond_1b

    .line 1299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnLabel:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v3, v0

    .line 1300
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1299
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1302
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v2, :cond_1c

    .line 1303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v3, v0

    .line 1304
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1303
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1306
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningLabel:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v3, v0

    .line 1307
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1306
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v3, v0

    .line 1309
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1308
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v3, v0

    .line 1311
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1310
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1315
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

    .line 1316
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

    .line 1315
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1317
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v2, :cond_1f

    .line 1318
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_7
    const/16 v2, 0xa

    if-ge v11, v2, :cond_1f

    .line 1319
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

    add-int v26, v2, v3

    .line 1320
    .restart local v26    # "y":I
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

    move/from16 v0, v26

    int-to-float v4, v0

    .line 1321
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

    move/from16 v0, v26

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    .line 1320
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1318
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1220
    .end local v9    # "headerCenter":I
    .end local v11    # "i":I
    .end local v26    # "y":I
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelStringWidth:I

    goto/16 :goto_6

    .line 1326
    .restart local v9    # "headerCenter":I
    :cond_1f
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

    .line 1327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    .line 1328
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMinPercentLabelStringWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 1329
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1327
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1330
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

    .line 1331
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    .line 1330
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_22

    .line 1334
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    add-int v29, v2, v3

    .line 1335
    .local v29, "ytop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move/from16 v27, v0

    .line 1336
    .local v27, "ybottom":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    .line 1337
    .local v14, "lastLeft":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    .restart local v11    # "i":I
    :goto_8
    if-ltz v11, :cond_22

    .line 1339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;

    .line 1340
    .local v12, "label":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int v17, v2, v3

    .line 1341
    .local v17, "left":I
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x2

    add-int v25, v2, v3

    .line 1342
    .restart local v25    # "x":I
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    add-int v2, v2, v25

    if-lt v2, v14, :cond_21

    .line 1343
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    sub-int v25, v2, v3

    .line 1344
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int v17, v25, v2

    .line 1345
    move/from16 v0, v17

    if-lt v0, v14, :cond_21

    .line 1338
    :cond_20
    :goto_9
    add-int/lit8 v11, v11, -0x1

    goto :goto_8

    .line 1350
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move/from16 v0, v17

    if-lt v0, v2, :cond_20

    .line 1354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    iget v3, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    int-to-float v3, v3

    move/from16 v0, v29

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    iget v3, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    int-to-float v3, v3

    move/from16 v0, v27

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1358
    iget-object v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->label:Ljava/lang/String;

    move/from16 v0, v25

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int v4, v29, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 1149
    .end local v11    # "i":I
    .end local v12    # "label":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;
    .end local v14    # "lastLeft":I
    .end local v17    # "left":I
    .end local v25    # "x":I
    .end local v27    # "ybottom":I
    .end local v29    # "ytop":I
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
    .line 609
    if-eqz p6, :cond_2

    .line 610
    if-ltz p7, :cond_1

    if-ge p7, p1, :cond_1

    .line 611
    if-eqz p15, :cond_0

    .line 612
    int-to-float v1, p1

    int-to-float v2, p5

    move-object/from16 v0, p15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 614
    :cond_0
    int-to-float v1, p1

    int-to-float v2, p5

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 616
    :cond_1
    int-to-float v1, p1

    iget v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 617
    int-to-float v1, p4

    iget v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 618
    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    .line 621
    :cond_2
    if-eqz p8, :cond_3

    .line 622
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 624
    :cond_3
    if-eqz p9, :cond_4

    .line 625
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 627
    :cond_4
    if-eqz p10, :cond_5

    .line 628
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 630
    :cond_5
    if-eqz p11, :cond_6

    .line 631
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 633
    :cond_6
    if-eqz p12, :cond_7

    .line 634
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 636
    :cond_7
    if-eqz p13, :cond_8

    .line 637
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 639
    :cond_8
    if-eqz p14, :cond_9

    .line 640
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 642
    :cond_9
    iget-boolean v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v1, :cond_a

    .line 643
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v1, p1}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->finish(I)V

    .line 608
    :cond_a
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1124
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1126
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getWidth()I

    move-result v1

    .line 1127
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getHeight()I

    move-result v0

    .line 1133
    .local v0, "height":I
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->drawChart(Landroid/graphics/Canvas;II)V

    .line 1123
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 590
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    .line 591
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMinPercentLabelStringWidth:I

    .line 592
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    .line 593
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings_exlib/BatteryInfo;

    iget-object v2, v2, Lcom/android/settings_exlib/BatteryInfo;->mChargeLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelStringWidth:I

    .line 594
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    .line 595
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    .line 596
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    .line 597
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    .line 598
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    .line 599
    iget v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    iget v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    sub-int v0, v1, v2

    .line 600
    .local v0, "headerTextHeight":I
    mul-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    .line 601
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getDefaultSize(II)I

    move-result v1

    .line 602
    iget v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    add-int/2addr v2, v3

    invoke-static {v2, p2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getDefaultSize(II)I

    move-result v2

    .line 601
    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->setMeasuredDimension(II)V

    .line 589
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 72
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 659
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 663
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    move/from16 v0, p1

    if-ne v4, v0, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    move/from16 v0, p2

    if-ne v4, v0, :cond_0

    .line 664
    return-void

    .line 667
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    if-nez v4, :cond_2

    .line 668
    :cond_1
    return-void

    .line 673
    :cond_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    .line 674
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    .line 675
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    .line 676
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCanvas:Landroid/graphics/Canvas;

    .line 678
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int v56, v4, v6

    .line 679
    .local v56, "textHeight":I
    mul-int/lit8 v4, v56, 0xa

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    add-int/2addr v4, v6

    move/from16 v0, p2

    if-le v0, v4, :cond_14

    .line 680
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 681
    mul-int/lit8 v4, v56, 0xf

    move/from16 v0, p2

    if-le v0, v4, :cond_13

    .line 683
    div-int/lit8 v4, v56, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 692
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    if-gtz v4, :cond_3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 694
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    .line 695
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .line 696
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    .line 697
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-int v50, v4, v6

    .line 699
    .local v50, "levelWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 700
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 701
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 702
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 703
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 704
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 705
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 706
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 707
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 708
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 709
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 710
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 712
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    add-int v38, v56, v4

    .line 714
    .local v38, "fullBarOffset":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v4, :cond_1a

    .line 715
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    .line 716
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    add-int v4, v4, v38

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 717
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    add-int v4, v4, v38

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    .line 718
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    add-int v4, v4, v38

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    .line 719
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v4, :cond_15

    move/from16 v4, v38

    :goto_1
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    .line 720
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v4, :cond_16

    move/from16 v4, v38

    :goto_2
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    .line 721
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    if-eqz v4, :cond_17

    move/from16 v4, v38

    :goto_3
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    .line 722
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    if-eqz v4, :cond_18

    move/from16 v4, v38

    :goto_4
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    .line 723
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v6, :cond_19

    .end local v38    # "fullBarOffset":I
    :goto_5
    add-int v4, v4, v38

    .line 724
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    mul-int/lit8 v6, v6, 0x2

    .line 723
    add-int/2addr v4, v6

    .line 724
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v6, v6, 0x2

    .line 723
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 725
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v4, :cond_4

    .line 726
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    .line 738
    :cond_4
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 739
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 740
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 741
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 742
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 743
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 744
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 745
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 746
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 747
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 748
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 749
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 751
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 752
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 754
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v60, v0

    .line 755
    .local v60, "walltimeStart":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v66, v0

    cmp-long v4, v66, v60

    if-lez v4, :cond_1b

    .line 756
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v66, v0

    sub-long v58, v66, v60

    .line 757
    .local v58, "walltimeChange":J
    :goto_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v32, v0

    .line 758
    .local v32, "curWalltime":J
    const-wide/16 v44, 0x0

    .line 760
    .local v44, "lastRealtime":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLow:I

    move/from16 v22, v0

    .line 761
    .local v22, "batLow":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLow:I

    sub-int v21, v4, v6

    .line 763
    .local v21, "batChange":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    sub-int v4, p2, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int v7, v4, v6

    .line 764
    .local v7, "levelh":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    .line 766
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .local v5, "x":I
    const/16 v65, 0x0

    .local v65, "y":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .local v8, "startX":I
    const/4 v11, -0x1

    .local v11, "lastX":I
    const/4 v9, -0x1

    .line 767
    .local v9, "lastY":I
    const/16 v41, 0x0

    .line 768
    .local v41, "i":I
    const/4 v10, 0x0

    .line 769
    .local v10, "curLevelPath":Landroid/graphics/Path;
    const/16 v19, 0x0

    .line 770
    .local v19, "lastLinePath":Landroid/graphics/Path;
    const/4 v12, 0x0

    .local v12, "lastCharging":Z
    const/4 v13, 0x0

    .local v13, "lastScreenOn":Z
    const/4 v14, 0x0

    .line 771
    .local v14, "lastGpsOn":Z
    const/4 v15, 0x0

    .local v15, "lastFlashlightOn":Z
    const/16 v16, 0x0

    .line 772
    .local v16, "lastCameraOn":Z
    const/16 v17, 0x0

    .local v17, "lastWifiRunning":Z
    const/16 v48, 0x0

    .local v48, "lastWifiSupplRunning":Z
    const/16 v18, 0x0

    .line 773
    .local v18, "lastCpuRunning":Z
    const/16 v49, 0x0

    .line 774
    .local v49, "lastWifiSupplState":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mNumHist:I

    move/from16 v20, v0

    .line 775
    .local v20, "N":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    move-wide/from16 v66, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v68, v0

    cmp-long v4, v66, v68

    if-lez v4, :cond_37

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v4}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 776
    new-instance v52, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v52 .. v52}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .local v52, "rec":Landroid/os/BatteryStats$HistoryItem;
    move/from16 v64, v5

    .line 777
    .end local v5    # "x":I
    .end local v10    # "curLevelPath":Landroid/graphics/Path;
    .end local v12    # "lastCharging":Z
    .end local v13    # "lastScreenOn":Z
    .end local v14    # "lastGpsOn":Z
    .end local v15    # "lastFlashlightOn":Z
    .end local v16    # "lastCameraOn":Z
    .end local v17    # "lastWifiRunning":Z
    .end local v18    # "lastCpuRunning":Z
    .end local v19    # "lastLinePath":Landroid/graphics/Path;
    .local v64, "x":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v4

    if-eqz v4, :cond_36

    move/from16 v0, v41

    move/from16 v1, v20

    if-ge v0, v1, :cond_36

    .line 778
    invoke-virtual/range {v52 .. v52}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 779
    move-object/from16 v0, v52

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v66, v0

    sub-long v66, v66, v44

    add-long v32, v32, v66

    .line 780
    move-object/from16 v0, v52

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v44, v0

    .line 781
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-long v66, v32, v60

    move/from16 v0, v50

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v66, v66, v68

    div-long v66, v66, v58

    move-wide/from16 v0, v66

    long-to-int v6, v0

    add-int v5, v4, v6

    .line 782
    .end local v64    # "x":I
    .restart local v5    # "x":I
    if-gez v5, :cond_5

    .line 783
    const/4 v5, 0x0

    .line 795
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, v52

    iget-byte v6, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int v6, v6, v22

    add-int/lit8 v66, v7, -0x1

    mul-int v6, v6, v66

    div-int v6, v6, v21

    sub-int v65, v4, v6

    .line 797
    if-eq v11, v5, :cond_9

    .line 799
    move/from16 v0, v65

    if-eq v9, v0, :cond_9

    .line 802
    move-object/from16 v0, v52

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v57, v0

    .line 803
    .local v57, "value":B
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    move/from16 v0, v57

    if-gt v0, v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v51, v0

    .line 807
    :goto_9
    move-object/from16 v0, v51

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1e

    .line 808
    if-eqz v19, :cond_6

    .line 809
    int-to-float v4, v5

    move/from16 v0, v65

    int-to-float v6, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 811
    :cond_6
    if-eqz v51, :cond_7

    .line 812
    int-to-float v4, v5

    move/from16 v0, v65

    int-to-float v6, v0

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 814
    :cond_7
    move-object/from16 v19, v51

    .line 819
    :cond_8
    :goto_a
    if-nez v10, :cond_1f

    .line 820
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 821
    .local v10, "curLevelPath":Landroid/graphics/Path;
    int-to-float v4, v5

    move/from16 v0, v65

    int-to-float v6, v0

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 822
    move v8, v5

    .line 826
    .end local v10    # "curLevelPath":Landroid/graphics/Path;
    :goto_b
    move v11, v5

    .line 827
    move/from16 v9, v65

    .line 831
    .end local v57    # "value":B
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v4, :cond_12

    .line 833
    move-object/from16 v0, v52

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x80000

    and-int/2addr v4, v6

    if-eqz v4, :cond_20

    const/16 v30, 0x1

    .line 834
    .local v30, "charging":Z
    :goto_c
    move/from16 v0, v30

    if-eq v0, v12, :cond_a

    .line 835
    if-eqz v30, :cond_21

    .line 836
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 840
    :goto_d
    move/from16 v12, v30

    .line 844
    :cond_a
    move-object/from16 v0, v52

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x100000

    and-int/2addr v4, v6

    if-eqz v4, :cond_22

    const/16 v53, 0x1

    .line 845
    .local v53, "screenOn":Z
    :goto_e
    move/from16 v0, v53

    if-eq v0, v13, :cond_b

    .line 846
    if-eqz v53, :cond_23

    .line 847
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 851
    :goto_f
    move/from16 v13, v53

    .line 855
    :cond_b
    move-object/from16 v0, v52

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x20000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_24

    const/16 v40, 0x1

    .line 856
    .local v40, "gpsOn":Z
    :goto_10
    move/from16 v0, v40

    if-eq v0, v14, :cond_c

    .line 857
    if-eqz v40, :cond_25

    .line 858
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 862
    :goto_11
    move/from16 v14, v40

    .line 866
    :cond_c
    move-object/from16 v0, v52

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x8000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_26

    const/16 v35, 0x1

    .line 867
    .local v35, "flashlightOn":Z
    :goto_12
    move/from16 v0, v35

    if-eq v0, v15, :cond_d

    .line 868
    if-eqz v35, :cond_27

    .line 869
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 873
    :goto_13
    move/from16 v15, v35

    .line 877
    :cond_d
    move-object/from16 v0, v52

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x200000

    and-int/2addr v4, v6

    if-eqz v4, :cond_28

    const/16 v29, 0x1

    .line 878
    .local v29, "cameraOn":Z
    :goto_14
    move/from16 v0, v29

    move/from16 v1, v16

    if-eq v0, v1, :cond_e

    .line 879
    if-eqz v29, :cond_29

    .line 880
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 884
    :goto_15
    move/from16 v16, v29

    .line 888
    :cond_e
    move-object/from16 v0, v52

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v4, v4, 0xf

    shr-int/lit8 v63, v4, 0x0

    .line 891
    .local v63, "wifiSupplState":I
    move/from16 v0, v49

    move/from16 v1, v63

    if-eq v0, v1, :cond_2a

    .line 892
    move/from16 v49, v63

    .line 893
    packed-switch v63, :pswitch_data_0

    .line 903
    :pswitch_0
    const/16 v48, 0x1

    const/16 v62, 0x1

    .line 909
    :goto_16
    move-object/from16 v0, v52

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x18010000

    and-int/2addr v4, v6

    if-eqz v4, :cond_f

    .line 912
    const/16 v62, 0x1

    .line 914
    :cond_f
    move/from16 v0, v62

    move/from16 v1, v17

    if-eq v0, v1, :cond_10

    .line 915
    if-eqz v62, :cond_2b

    .line 916
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 920
    :goto_17
    move/from16 v17, v62

    .line 924
    :cond_10
    move-object/from16 v0, v52

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, -0x80000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_2c

    const/16 v31, 0x1

    .line 925
    .local v31, "cpuRunning":Z
    :goto_18
    move/from16 v0, v31

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    .line 926
    if-eqz v31, :cond_2d

    .line 927
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 931
    :goto_19
    move/from16 v18, v31

    .line 934
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v4, :cond_12

    .line 936
    move-object/from16 v0, v52

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v4, v4, 0x1c0

    shr-int/lit8 v4, v4, 0x6

    .line 938
    const/4 v6, 0x3

    .line 936
    if-ne v4, v6, :cond_2e

    .line 939
    const/16 v23, 0x0

    .line 947
    .local v23, "bin":I
    :goto_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, v23

    invoke-virtual {v4, v5, v0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->addTick(II)V

    .line 979
    .end local v23    # "bin":I
    .end local v29    # "cameraOn":Z
    .end local v30    # "charging":Z
    .end local v31    # "cpuRunning":Z
    .end local v35    # "flashlightOn":Z
    .end local v40    # "gpsOn":Z
    .end local v53    # "screenOn":Z
    .end local v63    # "wifiSupplState":I
    :cond_12
    :goto_1b
    add-int/lit8 v41, v41, 0x1

    move/from16 v64, v5

    .end local v5    # "x":I
    .restart local v64    # "x":I
    goto/16 :goto_8

    .line 686
    .end local v7    # "levelh":I
    .end local v8    # "startX":I
    .end local v9    # "lastY":I
    .end local v11    # "lastX":I
    .end local v20    # "N":I
    .end local v21    # "batChange":I
    .end local v22    # "batLow":I
    .end local v32    # "curWalltime":J
    .end local v41    # "i":I
    .end local v44    # "lastRealtime":J
    .end local v48    # "lastWifiSupplRunning":Z
    .end local v49    # "lastWifiSupplState":I
    .end local v50    # "levelWidth":I
    .end local v52    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v58    # "walltimeChange":J
    .end local v60    # "walltimeStart":J
    .end local v64    # "x":I
    .end local v65    # "y":I
    :cond_13
    div-int/lit8 v4, v56, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    goto/16 :goto_0

    .line 689
    :cond_14
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 690
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    goto/16 :goto_0

    .line 719
    .restart local v38    # "fullBarOffset":I
    .restart local v50    # "levelWidth":I
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 720
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 721
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 722
    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 723
    :cond_19
    const/16 v38, 0x0

    goto/16 :goto_5

    .line 731
    :cond_1a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    const/4 v4, 0x0

    .line 730
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    .line 731
    const/4 v4, 0x0

    .line 730
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    .line 731
    const/4 v4, 0x0

    .line 730
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    .line 731
    const/4 v4, 0x0

    .line 729
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    .line 731
    const/4 v4, 0x0

    .line 729
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    .line 731
    const/4 v4, 0x0

    .line 729
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    .line 731
    const/4 v4, 0x0

    .line 729
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 732
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v4, v4, 0x4

    add-int v4, v4, v38

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 733
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v4, :cond_4

    .line 734
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    goto/16 :goto_6

    .line 756
    .end local v38    # "fullBarOffset":I
    .restart local v60    # "walltimeStart":J
    :cond_1b
    const-wide/16 v58, 0x1

    .restart local v58    # "walltimeChange":J
    goto/16 :goto_7

    .line 804
    .restart local v5    # "x":I
    .restart local v7    # "levelh":I
    .restart local v8    # "startX":I
    .restart local v9    # "lastY":I
    .restart local v11    # "lastX":I
    .restart local v20    # "N":I
    .restart local v21    # "batChange":I
    .restart local v22    # "batLow":I
    .restart local v32    # "curWalltime":J
    .restart local v41    # "i":I
    .restart local v44    # "lastRealtime":J
    .restart local v48    # "lastWifiSupplRunning":Z
    .restart local v49    # "lastWifiSupplState":I
    .restart local v52    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v57    # "value":B
    .restart local v65    # "y":I
    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    move/from16 v0, v57

    if-gt v0, v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v51, v0

    .local v51, "path":Landroid/graphics/Path;
    goto/16 :goto_9

    .line 805
    .end local v51    # "path":Landroid/graphics/Path;
    :cond_1d
    const/16 v51, 0x0

    .local v51, "path":Landroid/graphics/Path;
    goto/16 :goto_9

    .line 815
    .end local v51    # "path":Landroid/graphics/Path;
    :cond_1e
    if-eqz v51, :cond_8

    .line 816
    int-to-float v4, v5

    move/from16 v0, v65

    int-to-float v6, v0

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_a

    .line 824
    :cond_1f
    int-to-float v4, v5

    move/from16 v0, v65

    int-to-float v6, v0

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_b

    .line 833
    .end local v57    # "value":B
    :cond_20
    const/16 v30, 0x0

    goto/16 :goto_c

    .line 838
    .restart local v30    # "charging":Z
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_d

    .line 844
    :cond_22
    const/16 v53, 0x0

    goto/16 :goto_e

    .line 849
    .restart local v53    # "screenOn":Z
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_f

    .line 855
    :cond_24
    const/16 v40, 0x0

    goto/16 :goto_10

    .line 860
    .restart local v40    # "gpsOn":Z
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_11

    .line 866
    :cond_26
    const/16 v35, 0x0

    goto/16 :goto_12

    .line 871
    .restart local v35    # "flashlightOn":Z
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_13

    .line 877
    :cond_28
    const/16 v29, 0x0

    goto/16 :goto_14

    .line 882
    .restart local v29    # "cameraOn":Z
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_15

    .line 900
    .restart local v63    # "wifiSupplState":I
    :pswitch_1
    const/16 v48, 0x0

    const/16 v62, 0x0

    .line 901
    .local v62, "wifiRunning":Z
    goto/16 :goto_16

    .line 907
    .end local v62    # "wifiRunning":Z
    :cond_2a
    move/from16 v62, v48

    .local v62, "wifiRunning":Z
    goto/16 :goto_16

    .line 918
    .end local v62    # "wifiRunning":Z
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_17

    .line 924
    :cond_2c
    const/16 v31, 0x0

    goto/16 :goto_18

    .line 929
    .restart local v31    # "cpuRunning":Z
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    move/from16 v66, v0

    sub-int v66, p2, v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_19

    .line 940
    :cond_2e
    move-object/from16 v0, v52

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x200000

    and-int/2addr v4, v6

    if-eqz v4, :cond_2f

    .line 941
    const/16 v23, 0x1

    .restart local v23    # "bin":I
    goto/16 :goto_1a

    .line 943
    .end local v23    # "bin":I
    :cond_2f
    move-object/from16 v0, v52

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v4, v4, 0x38

    shr-int/lit8 v23, v4, 0x3

    .line 945
    .restart local v23    # "bin":I
    add-int/lit8 v23, v23, 0x2

    goto/16 :goto_1a

    .line 952
    .end local v5    # "x":I
    .end local v23    # "bin":I
    .end local v29    # "cameraOn":Z
    .end local v30    # "charging":Z
    .end local v31    # "cpuRunning":Z
    .end local v35    # "flashlightOn":Z
    .end local v40    # "gpsOn":Z
    .end local v53    # "screenOn":Z
    .end local v63    # "wifiSupplState":I
    .restart local v64    # "x":I
    :cond_30
    move-wide/from16 v46, v32

    .line 953
    .local v46, "lastWalltime":J
    move-object/from16 v0, v52

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x5

    if-eq v4, v6, :cond_31

    .line 954
    move-object/from16 v0, v52

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x7

    if-ne v4, v6, :cond_32

    .line 955
    :cond_31
    move-object/from16 v0, v52

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v66, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v68, v0

    cmp-long v4, v66, v68

    if-ltz v4, :cond_34

    .line 956
    move-object/from16 v0, v52

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v32, v0

    .line 960
    :goto_1c
    move-object/from16 v0, v52

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v44, v0

    .line 963
    :cond_32
    move-object/from16 v0, v52

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x6

    if-eq v4, v6, :cond_35

    .line 964
    move-object/from16 v0, v52

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x5

    if-ne v4, v6, :cond_33

    .line 965
    sub-long v66, v46, v32

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->abs(J)J

    move-result-wide v66

    const-wide/32 v68, 0x36ee80

    cmp-long v4, v66, v68

    if-lez v4, :cond_35

    .line 966
    :cond_33
    if-eqz v10, :cond_48

    .line 967
    add-int/lit8 v5, v64, 0x1

    move-object/from16 v4, p0

    move/from16 v6, p2

    invoke-virtual/range {v4 .. v19}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZZZLandroid/graphics/Path;)V

    .line 970
    const/4 v9, -0x1

    const/4 v11, -0x1

    .line 971
    const/4 v10, 0x0

    .line 972
    .local v10, "curLevelPath":Landroid/graphics/Path;
    const/16 v19, 0x0

    .line 974
    .restart local v19    # "lastLinePath":Landroid/graphics/Path;
    const/16 v18, 0x0

    .restart local v18    # "lastCpuRunning":Z
    const/16 v16, 0x0

    .restart local v16    # "lastCameraOn":Z
    const/4 v15, 0x0

    .restart local v15    # "lastFlashlightOn":Z
    const/4 v14, 0x0

    .restart local v14    # "lastGpsOn":Z
    const/4 v13, 0x0

    .restart local v13    # "lastScreenOn":Z
    const/4 v12, 0x0

    .restart local v12    # "lastCharging":Z
    move/from16 v5, v64

    .line 973
    .end local v64    # "x":I
    .restart local v5    # "x":I
    goto/16 :goto_1b

    .line 958
    .end local v5    # "x":I
    .end local v10    # "curLevelPath":Landroid/graphics/Path;
    .end local v12    # "lastCharging":Z
    .end local v13    # "lastScreenOn":Z
    .end local v14    # "lastGpsOn":Z
    .end local v15    # "lastFlashlightOn":Z
    .end local v16    # "lastCameraOn":Z
    .end local v18    # "lastCpuRunning":Z
    .end local v19    # "lastLinePath":Landroid/graphics/Path;
    .restart local v64    # "x":I
    :cond_34
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v66, v0

    move-object/from16 v0, v52

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v68, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v70, v0

    sub-long v68, v68, v70

    add-long v32, v66, v68

    goto :goto_1c

    :cond_35
    move/from16 v5, v64

    .line 965
    .end local v64    # "x":I
    .restart local v5    # "x":I
    goto/16 :goto_1b

    .line 981
    .end local v5    # "x":I
    .end local v46    # "lastWalltime":J
    .restart local v64    # "x":I
    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v4}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    move/from16 v5, v64

    .line 984
    .end local v52    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v64    # "x":I
    .restart local v5    # "x":I
    :cond_37
    if-ltz v9, :cond_38

    if-gez v11, :cond_45

    .line 986
    :cond_38
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move v5, v11

    .line 987
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings_exlib/BatteryInfo;

    iget v6, v6, Lcom/android/settings_exlib/BatteryInfo;->mBatteryLevel:I

    sub-int v6, v6, v22

    add-int/lit8 v66, v7, -0x1

    mul-int v6, v6, v66

    div-int v6, v6, v21

    sub-int v9, v4, v6

    move/from16 v65, v9

    .line 989
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings_exlib/BatteryInfo;

    iget v4, v4, Lcom/android/settings_exlib/BatteryInfo;->mBatteryLevel:I

    int-to-byte v0, v4

    move/from16 v57, v0

    .line 990
    .restart local v57    # "value":B
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    move/from16 v0, v57

    if-gt v0, v4, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v51, v0

    .line 993
    :goto_1d
    if-eqz v51, :cond_39

    .line 994
    int-to-float v4, v11

    int-to-float v6, v9

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 995
    move-object/from16 v19, v51

    .line 997
    :cond_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    int-to-float v6, v11

    int-to-float v0, v9

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 998
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 999
    .local v10, "curLevelPath":Landroid/graphics/Path;
    move/from16 v5, p1

    .end local v10    # "curLevelPath":Landroid/graphics/Path;
    .end local v57    # "value":B
    :cond_3a
    :goto_1e
    move-object/from16 v4, p0

    move/from16 v6, p2

    .line 1008
    invoke-virtual/range {v4 .. v19}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZZZLandroid/graphics/Path;)V

    .line 1012
    move/from16 v0, p1

    if-ge v5, v0, :cond_3b

    .line 1015
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    int-to-float v6, v5

    int-to-float v0, v9

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1016
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    rsub-int/lit8 v6, v22, 0x64

    add-int/lit8 v66, v7, -0x1

    mul-int v6, v6, v66

    div-int v6, v6, v21

    sub-int v39, v4, v6

    .line 1017
    .local v39, "fullY":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    rsub-int/lit8 v6, v22, 0x0

    add-int/lit8 v66, v7, -0x1

    mul-int v6, v6, v66

    div-int v6, v6, v21

    sub-int v34, v4, v6

    .line 1018
    .local v34, "emptyY":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings_exlib/BatteryInfo;

    iget-boolean v4, v4, Lcom/android/settings_exlib/BatteryInfo;->mDischarging:Z

    if-eqz v4, :cond_46

    .line 1019
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v6, v6

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1024
    :goto_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 1028
    .end local v34    # "emptyY":I
    .end local v39    # "fullY":I
    :cond_3b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v66, v0

    const-wide/16 v68, 0x0

    cmp-long v4, v66, v68

    if-lez v4, :cond_42

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v66, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v68, v0

    cmp-long v4, v66, v68

    if-lez v4, :cond_42

    .line 1030
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->is24Hour()Z

    move-result v42

    .line 1031
    .local v42, "is24hr":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v28

    .line 1032
    .local v28, "calStart":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v66, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v66

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1033
    const/16 v4, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1034
    const/16 v4, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1035
    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1036
    invoke-virtual/range {v28 .. v28}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v54

    .line 1037
    .local v54, "startRoundTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v66, v0

    cmp-long v4, v54, v66

    if-gez v4, :cond_3c

    .line 1038
    const/16 v4, 0xb

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v6, 0xb

    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 1039
    invoke-virtual/range {v28 .. v28}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v54

    .line 1041
    :cond_3c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v24

    .line 1042
    .local v24, "calEnd":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v66, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v66

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1043
    const/16 v4, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1044
    const/16 v4, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1045
    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1046
    invoke-virtual/range {v24 .. v24}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v36

    .line 1047
    .local v36, "endRoundTime":J
    cmp-long v4, v54, v36

    if-gez v4, :cond_3e

    .line 1048
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v42

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1049
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v25

    .line 1050
    .local v25, "calMid":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v66, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v68, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v70, v0

    sub-long v68, v68, v70

    const-wide/16 v70, 0x2

    div-long v68, v68, v70

    add-long v66, v66, v68

    move-object/from16 v0, v25

    move-wide/from16 v1, v66

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1051
    const/16 v4, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1052
    const/16 v4, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1053
    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1054
    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    .line 1055
    .local v26, "calMidMillis":J
    cmp-long v4, v26, v54

    if-lez v4, :cond_3d

    cmp-long v4, v26, v36

    if-gez v4, :cond_3d

    .line 1056
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v42

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1058
    :cond_3d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v42

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1062
    .end local v25    # "calMid":Ljava/util/Calendar;
    .end local v26    # "calMidMillis":J
    :cond_3e
    const/4 v4, 0x6

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v4, v6, :cond_3f

    .line 1063
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eq v4, v6, :cond_42

    .line 1064
    :cond_3f
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->isDayFirst()Z

    move-result v43

    .line 1065
    .local v43, "isDayFirst":Z
    const/16 v4, 0xb

    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1066
    invoke-virtual/range {v28 .. v28}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v54

    .line 1067
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v66, v0

    cmp-long v4, v54, v66

    if-gez v4, :cond_40

    .line 1068
    const/4 v4, 0x6

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x6

    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 1069
    invoke-virtual/range {v28 .. v28}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v54

    .line 1071
    :cond_40
    const/16 v4, 0xb

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1072
    invoke-virtual/range {v24 .. v24}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v36

    .line 1073
    cmp-long v4, v54, v36

    if-gez v4, :cond_41

    .line 1074
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v43

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1075
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v25

    .line 1079
    .restart local v25    # "calMid":Ljava/util/Calendar;
    sub-long v66, v36, v54

    const-wide/16 v68, 0x2

    div-long v66, v66, v68

    add-long v66, v66, v54

    .line 1080
    const-wide/32 v68, 0x6ddd00

    .line 1079
    add-long v66, v66, v68

    move-object/from16 v0, v25

    move-wide/from16 v1, v66

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1081
    const/16 v4, 0xb

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1082
    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1083
    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    .line 1084
    .restart local v26    # "calMidMillis":J
    cmp-long v4, v26, v54

    if-lez v4, :cond_41

    cmp-long v4, v26, v36

    if-gez v4, :cond_41

    .line 1085
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v43

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1088
    .end local v25    # "calMid":Ljava/util/Calendar;
    .end local v26    # "calMidMillis":J
    :cond_41
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v43

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1092
    .end local v24    # "calEnd":Ljava/util/Calendar;
    .end local v28    # "calStart":Ljava/util/Calendar;
    .end local v36    # "endRoundTime":J
    .end local v42    # "is24hr":Z
    .end local v43    # "isDayFirst":Z
    .end local v54    # "startRoundTime":J
    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x2

    if-ge v4, v6, :cond_47

    .line 1095
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1096
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v66, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v68, v0

    sub-long v66, v66, v68

    .line 1095
    move-wide/from16 v0, v66

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 1097
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    .line 658
    :goto_20
    return-void

    .line 991
    .restart local v57    # "value":B
    :cond_43
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    move/from16 v0, v57

    if-gt v0, v4, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v51, v0

    .local v51, "path":Landroid/graphics/Path;
    goto/16 :goto_1d

    .line 992
    .end local v51    # "path":Landroid/graphics/Path;
    :cond_44
    const/16 v51, 0x0

    .local v51, "path":Landroid/graphics/Path;
    goto/16 :goto_1d

    .line 1002
    .end local v51    # "path":Landroid/graphics/Path;
    .end local v57    # "value":B
    :cond_45
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    move-wide/from16 v66, v0

    sub-long v66, v66, v60

    move/from16 v0, v50

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v66, v66, v68

    div-long v66, v66, v58

    move-wide/from16 v0, v66

    long-to-int v6, v0

    add-int v5, v4, v6

    .line 1003
    if-gez v5, :cond_3a

    .line 1004
    const/4 v5, 0x0

    goto/16 :goto_1e

    .line 1021
    .restart local v34    # "emptyY":I
    .restart local v39    # "fullY":I
    :cond_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v6, v6

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v6, v6

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v66

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1f

    .line 1099
    .end local v34    # "emptyY":I
    .end local v39    # "fullY":I
    :cond_47
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 1100
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    goto :goto_20

    .end local v5    # "x":I
    .restart local v46    # "lastWalltime":J
    .restart local v52    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v64    # "x":I
    :cond_48
    move/from16 v5, v64

    .end local v64    # "x":I
    .restart local v5    # "x":I
    goto/16 :goto_1b

    .line 893
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
    .locals 26
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

    .line 495
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    mul-long v6, v20, v22

    .line 497
    .local v6, "elapsedRealtimeUs":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v17, v0

    .line 498
    const/16 v20, 0x0

    .line 497
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v18

    .line 499
    .local v18, "uSecTime":J
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStatsPeriod:J

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v17

    const v20, 0x7f0e0b64

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v17

    const v20, 0x7f0e0b65

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v17

    const v20, 0x7f0e0b66

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v17

    const v20, 0x7f0e0b67

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCameraOnLabel:Ljava/lang/String;

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v17

    const v20, 0x7f0e0b68

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mFlashlightOnLabel:Ljava/lang/String;

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v17

    const v20, 0x7f0e0b69

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v17

    const v20, 0x7f0e0b6a

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningLabel:Ljava/lang/String;

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v17

    const v20, 0x7f0e0b6b

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    .line 509
    const/16 v17, 0x64

    invoke-static/range {v17 .. v17}, Lcom/android/settings_ex/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    .line 510
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/android/settings_ex/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v6, v7}, Lcom/android/settings_exlib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;J)Lcom/android/settings_exlib/BatteryInfo;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings_exlib/BatteryInfo;

    .line 513
    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    .line 514
    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings_exlib/BatteryInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings_exlib/BatteryInfo;->mChargeLabelString:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 517
    const/4 v11, 0x0

    .line 518
    .local v11, "pos":I
    const/4 v9, 0x0

    .line 519
    .local v9, "lastInteresting":I
    const/4 v10, -0x1

    .line 520
    .local v10, "lastLevel":B
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLow:I

    .line 521
    const/16 v17, 0x64

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    .line 522
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 523
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    .line 524
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    .line 525
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistStart:J

    .line 526
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 527
    const-wide/16 v14, 0x0

    .line 528
    .local v14, "lastWallTime":J
    const-wide/16 v12, 0x0

    .line 529
    .local v12, "lastRealtime":J
    const/4 v4, 0x0

    .line 530
    .local v4, "aggrStates":I
    const/4 v5, 0x0

    .line 531
    .local v5, "aggrStates2":I
    const/4 v8, 0x1

    .line 532
    .local v8, "first":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 533
    new-instance v16, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v16 .. v16}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 534
    .end local v10    # "lastLevel":B
    .local v16, "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 535
    add-int/lit8 v11, v11, 0x1

    .line 536
    if-eqz v8, :cond_1

    .line 537
    const/4 v8, 0x0

    .line 538
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistStart:J

    .line 540
    :cond_1
    move-object/from16 v0, v16

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v17, v0

    const/16 v20, 0x5

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 541
    move-object/from16 v0, v16

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v17, v0

    const/16 v20, 0x7

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 550
    :cond_2
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v20, v0

    const-wide v22, 0x39ef8b000L

    add-long v22, v22, v14

    cmp-long v17, v20, v22

    if-gtz v17, :cond_3

    .line 551
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x493e0

    add-long v22, v22, v24

    cmp-long v17, v20, v22

    if-gez v17, :cond_4

    .line 552
    :cond_3
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 554
    :cond_4
    move-object/from16 v0, v16

    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 555
    move-object/from16 v0, v16

    iget-wide v12, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 556
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v17, v20, v22

    if-nez v17, :cond_5

    .line 557
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v20, v0

    sub-long v20, v12, v20

    sub-long v20, v14, v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 560
    :cond_5
    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 561
    move-object/from16 v0, v16

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v10, :cond_6

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_7

    .line 562
    :cond_6
    move-object/from16 v0, v16

    iget-byte v10, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 564
    :cond_7
    move v9, v11

    .line 565
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistDataEnd:J

    .line 566
    move-object/from16 v0, v16

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v17, v0

    or-int v4, v4, v17

    .line 567
    move-object/from16 v0, v16

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move/from16 v17, v0

    or-int v5, v5, v17

    goto/16 :goto_0

    .line 571
    .end local v16    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistDataEnd:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings_exlib/BatteryInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings_exlib/BatteryInfo;->remainingTimeUs:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x3e8

    div-long v22, v22, v24

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 572
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistDataEnd:J

    move-wide/from16 v20, v0

    add-long v20, v20, v14

    sub-long v20, v20, v12

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    .line 573
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings_exlib/BatteryInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings_exlib/BatteryInfo;->remainingTimeUs:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x3e8

    div-long v22, v22, v24

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    .line 574
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mNumHist:I

    .line 575
    const/high16 v17, 0x20000000

    and-int v17, v17, v4

    if-eqz v17, :cond_b

    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    .line 576
    const/high16 v17, 0x8000000

    and-int v17, v17, v5

    if-eqz v17, :cond_c

    const/16 v17, 0x1

    :goto_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    .line 577
    const/high16 v17, 0x200000

    and-int v17, v17, v5

    if-eqz v17, :cond_d

    const/16 v17, 0x1

    :goto_3
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    .line 578
    const/high16 v17, 0x20000000

    and-int v17, v17, v5

    if-nez v17, :cond_e

    .line 579
    const/high16 v17, 0x18010000

    and-int v17, v17, v4

    if-eqz v17, :cond_f

    const/16 v17, 0x1

    .line 578
    :goto_4
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    .line 582
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 583
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    .line 585
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v22, v0

    cmp-long v17, v20, v22

    if-gtz v17, :cond_a

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 489
    :cond_a
    return-void

    .line 575
    :cond_b
    const/16 v17, 0x0

    goto :goto_1

    .line 576
    :cond_c
    const/16 v17, 0x0

    goto :goto_2

    .line 577
    :cond_d
    const/16 v17, 0x0

    goto :goto_3

    .line 578
    :cond_e
    const/16 v17, 0x1

    goto :goto_4

    .line 579
    :cond_f
    const/16 v17, 0x0

    goto :goto_4
.end method
