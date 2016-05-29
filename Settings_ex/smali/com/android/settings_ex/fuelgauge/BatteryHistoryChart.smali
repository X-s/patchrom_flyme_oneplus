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

.field mBatteryLevel:I

.field mBatteryUSBStatus:Ljava/lang/String;

.field mBatteryWarnLevel:I

.field final mBatteryWarnPaint:Landroid/graphics/Paint;

.field mBitmap:Landroid/graphics/Bitmap;

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

.field mGpsOnLabel:Ljava/lang/String;

.field mGpsOnOffset:I

.field final mGpsOnPaint:Landroid/graphics/Paint;

.field final mGpsOnPath:Landroid/graphics/Path;

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

    .line 129
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    .line 130
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    .line 131
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    .line 132
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    .line 133
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    .line 134
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    .line 135
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    .line 136
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    .line 137
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    .line 138
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    .line 139
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    .line 140
    new-instance v13, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-direct {v13}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;

    .line 141
    new-instance v13, Landroid/text/TextPaint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 142
    new-instance v13, Landroid/text/TextPaint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    .line 143
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    .line 145
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 146
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    .line 147
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    .line 148
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    .line 149
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    .line 150
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    .line 151
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    .line 152
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

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

    .line 177
    const-string v13, ""

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryUSBStatus:Ljava/lang/String;

    .line 199
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    .line 200
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    .line 230
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    .line 231
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    .line 360
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10e0046

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    .line 362
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10e0044

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    .line 367
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

    .line 371
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 372
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    const/16 v14, 0x80

    const/4 v15, 0x0

    const/16 v16, 0x80

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 374
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    const/16 v14, 0x80

    const/16 v15, 0x80

    const/16 v16, 0x80

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 376
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    const/16 v14, 0xc0

    const/16 v15, 0x80

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 378
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    const v14, -0x312845

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 380
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;

    sget-object v14, Lcom/android/settings_ex/Utils;->BADNESS_COLORS:[I

    invoke-virtual {v13, v14}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->setColors([I)V

    .line 387
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    const/16 v14, 0xff

    const/16 v15, 0xff

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 388
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 390
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 393
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
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

    .line 402
    const/16 v13, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v2, v13}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->retrieve(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    .line 405
    const/4 v12, 0x0

    .line 406
    .local v12, "shadowcolor":I
    const/4 v4, 0x0

    .local v4, "dx":F
    const/4 v5, 0x0

    .local v5, "dy":F
    const/4 v11, 0x0

    .line 408
    .local v11, "r":F
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v10

    .line 409
    .local v10, "n":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_0

    .line 410
    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 412
    .local v3, "attr":I
    packed-switch v3, :pswitch_data_0

    .line 409
    :goto_1
    :pswitch_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 414
    :pswitch_1
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 415
    goto :goto_1

    .line 418
    :pswitch_2
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 419
    goto :goto_1

    .line 422
    :pswitch_3
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 423
    goto :goto_1

    .line 426
    :pswitch_4
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 427
    goto :goto_1

    .line 430
    :pswitch_5
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    iput-object v13, v9, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    .line 431
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    iput-object v13, v7, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 435
    :pswitch_6
    iget v13, v9, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    iput v13, v9, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    .line 437
    iget v13, v7, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    iput v13, v7, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    goto :goto_1

    .line 442
    :pswitch_7
    iget v13, v9, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v9, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    .line 444
    iget v13, v7, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v7, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    goto :goto_1

    .line 449
    :pswitch_8
    iget v13, v9, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v9, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    .line 451
    iget v13, v7, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v7, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    goto :goto_1

    .line 456
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 457
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 458
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 459
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 460
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 461
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 465
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 469
    :pswitch_b
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    goto/16 :goto_1

    .line 474
    .end local v3    # "attr":I
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 476
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v13}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->apply(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v13}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TextAttrs;->apply(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 481
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v6, v13, 0x2

    .line 482
    .local v6, "hairlineWidth":I
    const/4 v13, 0x1

    if-ge v6, v13, :cond_1

    .line 483
    const/4 v6, 0x1

    .line 485
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    int-to-float v14, v6

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 486
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

    .line 489
    if-eqz v12, :cond_2

    .line 490
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v13, v11, v4, v5, v12}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 491
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v13, v11, v4, v5, v12}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 493
    :cond_2
    return-void

    .line 412
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
    .line 770
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isDayFirst()Z
    .locals 4

    .prologue
    .line 774
    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 776
    .local v0, "d":Llibcore/icu/LocaleData;
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortDateFormat4:Ljava/lang/String;

    .line 777
    .local v1, "value":Ljava/lang/String;
    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

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
    .line 1242
    iget-wide v4, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 1243
    .local v4, "walltimeStart":J
    iget-wide v6, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    sub-long v2, v6, v4

    .line 1244
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

    .line 1250
    return-void
.end method

.method addTimeLabel(Ljava/util/Calendar;IIZ)V
    .locals 14
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "levelLeft"    # I
    .param p3, "levelRight"    # I
    .param p4, "is24hr"    # Z

    .prologue
    .line 1230
    iget-wide v4, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 1231
    .local v4, "walltimeStart":J
    iget-wide v6, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    sub-long v2, v6, v4

    .line 1232
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

    .line 1238
    return-void
.end method

.method buildBitmap(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1268
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

    .line 1280
    :goto_0
    return-void

    .line 1276
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    .line 1278
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCanvas:Landroid/graphics/Canvas;

    .line 1279
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
    .line 1283
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->isLayoutRtl()Z

    move-result v15

    .line 1284
    .local v15, "layoutRtl":Z
    if-eqz v15, :cond_4

    move/from16 v22, p2

    .line 1285
    .local v22, "textStartX":I
    :goto_0
    if-eqz v15, :cond_5

    const/16 v21, 0x0

    .line 1286
    .local v21, "textEndX":I
    :goto_1
    if-eqz v15, :cond_6

    sget-object v19, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 1288
    .local v19, "textAlignLeft":Landroid/graphics/Paint$Align;
    :goto_2
    if-eqz v15, :cond_7

    sget-object v20, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 1300
    .local v20, "textAlignRight":Landroid/graphics/Paint$Align;
    :goto_3
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 1301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1304
    :cond_0
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    .line 1309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1315
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_b

    .line 1316
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x4

    add-int v25, v2, v3

    .line 1317
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

    .line 1318
    .local v27, "ytick":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1319
    const/4 v14, 0x0

    .line 1320
    .local v14, "lastX":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_d

    .line 1321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;

    .line 1322
    .local v12, "label":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;
    if-nez v11, :cond_8

    .line 1323
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v3, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int v24, v2, v3

    .line 1324
    .local v24, "x":I
    if-gez v24, :cond_2

    .line 1325
    const/16 v24, 0x0

    .line 1330
    :cond_2
    iget-object v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1331
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

    .line 1333
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v14, v24, v2

    .line 1320
    :cond_3
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1284
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
    :cond_4
    const/16 v22, 0x0

    goto/16 :goto_0

    .restart local v22    # "textStartX":I
    :cond_5
    move/from16 v21, p2

    .line 1285
    goto/16 :goto_1

    .line 1286
    .restart local v21    # "textEndX":I
    :cond_6
    sget-object v19, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto/16 :goto_2

    .line 1288
    .restart local v19    # "textAlignLeft":Landroid/graphics/Paint$Align;
    :cond_7
    sget-object v20, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto/16 :goto_3

    .line 1334
    .restart local v11    # "i":I
    .restart local v12    # "label":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;
    .restart local v14    # "lastX":I
    .restart local v20    # "textAlignRight":Landroid/graphics/Paint$Align;
    .restart local v25    # "y":I
    .restart local v27    # "ytick":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v11, v2, :cond_9

    .line 1335
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v3, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int v24, v2, v3

    .line 1336
    .restart local v24    # "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    add-int/2addr v2, v14

    move/from16 v0, v24

    if-lt v0, v2, :cond_3

    .line 1339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;

    .line 1340
    .local v17, "nextLabel":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v2, v3

    move/from16 v0, v24

    if-gt v0, v2, :cond_3

    .line 1346
    iget-object v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1347
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

    .line 1349
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v14, v24, v2

    .line 1350
    goto :goto_5

    .line 1351
    .end local v17    # "nextLabel":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;
    .end local v24    # "x":I
    :cond_9
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v3, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int v24, v2, v3

    .line 1352
    .restart local v24    # "x":I
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v2, v2, v24

    move/from16 v0, p2

    if-lt v2, v0, :cond_a

    .line 1353
    add-int/lit8 v2, p2, -0x1

    iget v3, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    sub-int v24, v2, v3

    .line 1358
    :cond_a
    iget-object v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1359
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

    .line 1363
    .end local v11    # "i":I
    .end local v12    # "label":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$TimeLabel;
    .end local v14    # "lastX":I
    .end local v24    # "x":I
    .end local v25    # "y":I
    .end local v27    # "ytick":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 1364
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x4

    add-int v25, v2, v3

    .line 1365
    .restart local v25    # "y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1373
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 1376
    :cond_c
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

    .line 1381
    .end local v25    # "y":I
    :cond_d
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

    .line 1383
    .local v10, "headerTop":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_e

    .line 1387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    .line 1389
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1399
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    div-int/lit8 v18, v2, 0x2

    .line 1400
    .local v18, "stringHalfWidth":I
    if-eqz v15, :cond_f

    .line 1401
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    .line 1402
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v3, v2, 0x2

    if-eqz v15, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    :goto_6
    add-int v9, v3, v2

    .line 1407
    .local v9, "headerCenter":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    sub-int v3, v9, v18

    int-to-float v3, v3

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    move/from16 v0, v21

    int-to-float v3, v0

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1419
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1424
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1429
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_13

    .line 1432
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v2, p3, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v23, v2, v3

    .line 1433
    .local v23, "top":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->draw(Landroid/graphics/Canvas;II)V

    .line 1435
    .end local v23    # "top":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1440
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1445
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v2, :cond_16

    .line 1446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1452
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v2, :cond_17

    .line 1453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 1456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1459
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    .line 1462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1465
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v2, :cond_1c

    .line 1468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v8

    .line 1469
    .local v8, "align":Landroid/graphics/Paint$Align;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1471
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_19

    .line 1472
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

    .line 1475
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v2, :cond_1a

    .line 1476
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

    .line 1479
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v2, :cond_1b

    .line 1480
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

    .line 1483
    :cond_1b
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

    .line 1485
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

    .line 1487
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

    .line 1489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1492
    .end local v8    # "align":Landroid/graphics/Paint$Align;
    :cond_1c
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

    .line 1495
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v2, :cond_1e

    .line 1496
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_7
    const/16 v2, 0xa

    if-ge v11, v2, :cond_1e

    .line 1497
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

    .line 1499
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

    .line 1496
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1402
    .end local v9    # "headerCenter":I
    .end local v11    # "i":I
    .end local v25    # "y":I
    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelStringWidth:I

    goto/16 :goto_6

    .line 1508
    .restart local v9    # "headerCenter":I
    :cond_1e
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

    .line 1509
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

    .line 1512
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

    .line 1515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_21

    .line 1516
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    add-int v28, v2, v3

    .line 1517
    .local v28, "ytop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move/from16 v26, v0

    .line 1518
    .local v26, "ybottom":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    .line 1519
    .local v13, "lastLeft":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    .restart local v11    # "i":I
    :goto_8
    if-ltz v11, :cond_21

    .line 1521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;

    .line 1522
    .local v12, "label":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int v16, v2, v3

    .line 1523
    .local v16, "left":I
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x2

    add-int v24, v2, v3

    .line 1524
    .restart local v24    # "x":I
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    add-int v2, v2, v24

    if-lt v2, v13, :cond_20

    .line 1525
    iget v2, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    sub-int v24, v2, v3

    .line 1526
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int v16, v24, v2

    .line 1527
    move/from16 v0, v16

    if-lt v0, v13, :cond_20

    .line 1520
    :cond_1f
    :goto_9
    add-int/lit8 v11, v11, -0x1

    goto :goto_8

    .line 1532
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move/from16 v0, v16

    if-lt v0, v2, :cond_1f

    .line 1536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    iget v3, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    int-to-float v3, v3

    move/from16 v0, v28

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    iget v3, v12, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    int-to-float v3, v3

    move/from16 v0, v26

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1540
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

    .line 1543
    .end local v11    # "i":I
    .end local v12    # "label":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$DateLabel;
    .end local v13    # "lastLeft":I
    .end local v16    # "left":I
    .end local v24    # "x":I
    .end local v26    # "ybottom":I
    .end local v28    # "ytop":I
    :cond_21
    return-void
.end method

.method finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V
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
    .param p11, "lastWifiRunning"    # Z
    .param p12, "lastCpuRunning"    # Z
    .param p13, "lastPath"    # Landroid/graphics/Path;

    .prologue
    .line 737
    if-eqz p6, :cond_2

    .line 738
    if-ltz p7, :cond_1

    if-ge p7, p1, :cond_1

    .line 739
    if-eqz p13, :cond_0

    .line 740
    int-to-float v1, p1

    int-to-float v2, p5

    move-object/from16 v0, p13

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 742
    :cond_0
    int-to-float v1, p1

    int-to-float v2, p5

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 744
    :cond_1
    int-to-float v1, p1

    iget v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 745
    int-to-float v1, p4

    iget v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 746
    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    .line 749
    :cond_2
    if-eqz p8, :cond_3

    .line 750
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 752
    :cond_3
    if-eqz p9, :cond_4

    .line 753
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 755
    :cond_4
    if-eqz p10, :cond_5

    .line 756
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 758
    :cond_5
    if-eqz p11, :cond_6

    .line 759
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 761
    :cond_6
    if-eqz p12, :cond_7

    .line 762
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 764
    :cond_7
    iget-boolean v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v1, :cond_8

    .line 765
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v1, p1}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->finish(I)V

    .line 767
    :cond_8
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1254
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1256
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getWidth()I

    move-result v1

    .line 1257
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getHeight()I

    move-result v0

    .line 1264
    .local v0, "height":I
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->drawChart(Landroid/graphics/Canvas;II)V

    .line 1265
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 712
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    .line 714
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMinPercentLabelStringWidth:I

    .line 716
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    .line 717
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelStringWidth:I

    .line 719
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    .line 721
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    .line 722
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    .line 723
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    .line 724
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    .line 725
    iget v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    iget v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    sub-int v0, v1, v2

    .line 726
    .local v0, "headerTextHeight":I
    mul-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    .line 727
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

    .line 731
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 68
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 782
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 788
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    move/from16 v0, p1

    if-ne v4, v0, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    move/from16 v0, p2

    if-ne v4, v0, :cond_1

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    if-eqz v4, :cond_0

    .line 799
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    .line 800
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    .line 801
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    .line 802
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCanvas:Landroid/graphics/Canvas;

    .line 804
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int v52, v4, v6

    .line 805
    .local v52, "textHeight":I
    mul-int/lit8 v4, v52, 0xa

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    add-int/2addr v4, v6

    move/from16 v0, p2

    if-le v0, v4, :cond_11

    .line 806
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 807
    mul-int/lit8 v4, v52, 0xf

    move/from16 v0, p2

    if-le v0, v4, :cond_10

    .line 809
    div-int/lit8 v4, v52, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 818
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    if-gtz v4, :cond_2

    .line 819
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 821
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    add-int/lit8 v4, v4, 0xf

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    .line 822
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .line 823
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    .line 824
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-int v46, v4, v6

    .line 826
    .local v46, "levelWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 827
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 828
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 829
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 830
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 831
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 832
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 833
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 834
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 835
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 837
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    add-int v34, v52, v4

    .line 839
    .local v34, "fullBarOffset":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v4, :cond_15

    .line 840
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    .line 841
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    add-int v4, v4, v34

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 842
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    add-int v4, v4, v34

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    .line 843
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    add-int v4, v4, v34

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    .line 844
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v4, :cond_12

    move/from16 v4, v34

    :goto_2
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    .line 845
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v4, :cond_13

    move/from16 v4, v34

    :goto_3
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    .line 846
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v6, :cond_14

    .end local v34    # "fullBarOffset":I
    :goto_4
    add-int v4, v4, v34

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

    .line 849
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v4, :cond_3

    .line 850
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    .line 860
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 861
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 862
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 863
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 864
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 865
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 866
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 867
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 868
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 869
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 871
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 872
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 874
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v56, v0

    .line 875
    .local v56, "walltimeStart":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v62, v0

    cmp-long v4, v62, v56

    if-lez v4, :cond_16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v62, v0

    sub-long v54, v62, v56

    .line 877
    .local v54, "walltimeChange":J
    :goto_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v30, v0

    .line 878
    .local v30, "curWalltime":J
    const-wide/16 v40, 0x0

    .line 880
    .local v40, "lastRealtime":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLow:I

    move/from16 v20, v0

    .line 881
    .local v20, "batLow":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLow:I

    sub-int v19, v4, v6

    .line 883
    .local v19, "batChange":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    sub-int v4, p2, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int v7, v4, v6

    .line 884
    .local v7, "levelh":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    .line 886
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .local v5, "x":I
    const/16 v61, 0x0

    .local v61, "y":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .local v8, "startX":I
    const/4 v11, -0x1

    .local v11, "lastX":I
    const/4 v9, -0x1

    .line 887
    .local v9, "lastY":I
    const/16 v37, 0x0

    .line 888
    .local v37, "i":I
    const/4 v10, 0x0

    .line 889
    .local v10, "curLevelPath":Landroid/graphics/Path;
    const/16 v17, 0x0

    .line 890
    .local v17, "lastLinePath":Landroid/graphics/Path;
    const/4 v12, 0x0

    .local v12, "lastCharging":Z
    const/4 v13, 0x0

    .local v13, "lastScreenOn":Z
    const/4 v14, 0x0

    .line 891
    .local v14, "lastGpsOn":Z
    const/4 v15, 0x0

    .local v15, "lastWifiRunning":Z
    const/16 v44, 0x0

    .local v44, "lastWifiSupplRunning":Z
    const/16 v16, 0x0

    .line 892
    .local v16, "lastCpuRunning":Z
    const/16 v45, 0x0

    .line 893
    .local v45, "lastWifiSupplState":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mNumHist:I

    move/from16 v18, v0

    .line 894
    .local v18, "N":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    move-wide/from16 v62, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v64, v0

    cmp-long v4, v62, v64

    if-lez v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v4}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 896
    new-instance v48, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v48 .. v48}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .local v48, "rec":Landroid/os/BatteryStats$HistoryItem;
    move/from16 v60, v5

    .line 897
    .end local v5    # "x":I
    .end local v12    # "lastCharging":Z
    .end local v13    # "lastScreenOn":Z
    .end local v14    # "lastGpsOn":Z
    .local v60, "x":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v4

    if-eqz v4, :cond_2c

    move/from16 v0, v37

    move/from16 v1, v18

    if-ge v0, v1, :cond_2c

    .line 898
    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 899
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v62, v0

    sub-long v62, v62, v40

    add-long v30, v30, v62

    .line 900
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v40, v0

    .line 901
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-long v62, v30, v56

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v64, v0

    mul-long v62, v62, v64

    div-long v62, v62, v54

    move-wide/from16 v0, v62

    long-to-int v6, v0

    add-int v5, v4, v6

    .line 903
    .end local v60    # "x":I
    .restart local v5    # "x":I
    if-gez v5, :cond_4

    .line 904
    const/4 v5, 0x0

    .line 917
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, v48

    iget-byte v6, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int v6, v6, v20

    add-int/lit8 v62, v7, -0x1

    mul-int v6, v6, v62

    div-int v6, v6, v19

    sub-int v61, v4, v6

    .line 921
    if-eq v11, v5, :cond_8

    .line 923
    move/from16 v0, v61

    if-eq v9, v0, :cond_8

    .line 926
    move-object/from16 v0, v48

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v53, v0

    .line 927
    .local v53, "value":B
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    move/from16 v0, v53

    if-gt v0, v4, :cond_17

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v47, v0

    .line 934
    .local v47, "path":Landroid/graphics/Path;
    :goto_8
    move-object/from16 v0, v47

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_19

    .line 935
    if-eqz v17, :cond_5

    .line 936
    int-to-float v4, v5

    move/from16 v0, v61

    int-to-float v6, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 938
    :cond_5
    if-eqz v47, :cond_6

    .line 939
    int-to-float v4, v5

    move/from16 v0, v61

    int-to-float v6, v0

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 941
    :cond_6
    move-object/from16 v17, v47

    .line 946
    :cond_7
    :goto_9
    if-nez v10, :cond_1a

    .line 947
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 948
    int-to-float v4, v5

    move/from16 v0, v61

    int-to-float v6, v0

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 949
    move v8, v5

    .line 953
    :goto_a
    move v11, v5

    .line 954
    move/from16 v9, v61

    .line 958
    .end local v47    # "path":Landroid/graphics/Path;
    .end local v53    # "value":B
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v4, :cond_f

    .line 959
    move-object/from16 v0, v48

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x80000

    and-int/2addr v4, v6

    if-eqz v4, :cond_1b

    const/16 v27, 0x1

    .line 960
    .local v27, "charging":Z
    :goto_b
    move/from16 v0, v27

    if-eq v0, v12, :cond_9

    .line 961
    if-eqz v27, :cond_1c

    .line 962
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    move/from16 v62, v0

    sub-int v62, p2, v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 966
    :goto_c
    move/from16 v12, v27

    .line 969
    :cond_9
    move-object/from16 v0, v48

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x100000

    and-int/2addr v4, v6

    if-eqz v4, :cond_1d

    const/16 v49, 0x1

    .line 970
    .local v49, "screenOn":Z
    :goto_d
    move/from16 v0, v49

    if-eq v0, v13, :cond_a

    .line 971
    if-eqz v49, :cond_1e

    .line 972
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    move/from16 v62, v0

    sub-int v62, p2, v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 976
    :goto_e
    move/from16 v13, v49

    .line 979
    :cond_a
    move-object/from16 v0, v48

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x20000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_1f

    const/16 v36, 0x1

    .line 980
    .local v36, "gpsOn":Z
    :goto_f
    move/from16 v0, v36

    if-eq v0, v14, :cond_b

    .line 981
    if-eqz v36, :cond_20

    .line 982
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move/from16 v62, v0

    sub-int v62, p2, v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 986
    :goto_10
    move/from16 v14, v36

    .line 989
    :cond_b
    move-object/from16 v0, v48

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v4, v4, 0xf

    shr-int/lit8 v59, v4, 0x0

    .line 991
    .local v59, "wifiSupplState":I
    move/from16 v0, v45

    move/from16 v1, v59

    if-eq v0, v1, :cond_21

    .line 992
    move/from16 v45, v59

    .line 993
    packed-switch v59, :pswitch_data_0

    .line 1003
    :pswitch_0
    const/16 v44, 0x1

    move/from16 v58, v44

    .line 1009
    :goto_11
    move-object/from16 v0, v48

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x1c000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_c

    .line 1011
    const/16 v58, 0x1

    .line 1013
    :cond_c
    move/from16 v0, v58

    if-eq v0, v15, :cond_d

    .line 1014
    if-eqz v58, :cond_22

    .line 1015
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move/from16 v62, v0

    sub-int v62, p2, v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1021
    :goto_12
    move/from16 v15, v58

    .line 1024
    :cond_d
    move-object/from16 v0, v48

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, -0x80000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_23

    const/16 v28, 0x1

    .line 1025
    .local v28, "cpuRunning":Z
    :goto_13
    move/from16 v0, v28

    move/from16 v1, v16

    if-eq v0, v1, :cond_e

    .line 1026
    if-eqz v28, :cond_24

    .line 1027
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    move/from16 v62, v0

    sub-int v62, p2, v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1033
    :goto_14
    move/from16 v16, v28

    .line 1036
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v4, :cond_f

    .line 1038
    move-object/from16 v0, v48

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v4, v4, 0x1c0

    shr-int/lit8 v4, v4, 0x6

    const/4 v6, 0x3

    if-ne v4, v6, :cond_25

    .line 1039
    const/16 v21, 0x0

    .line 1046
    .local v21, "bin":I
    :goto_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->addTick(II)V

    .line 1079
    .end local v21    # "bin":I
    .end local v27    # "charging":Z
    .end local v28    # "cpuRunning":Z
    .end local v36    # "gpsOn":Z
    .end local v49    # "screenOn":Z
    .end local v59    # "wifiSupplState":I
    :cond_f
    :goto_16
    add-int/lit8 v37, v37, 0x1

    move/from16 v60, v5

    .end local v5    # "x":I
    .restart local v60    # "x":I
    goto/16 :goto_7

    .line 812
    .end local v7    # "levelh":I
    .end local v8    # "startX":I
    .end local v9    # "lastY":I
    .end local v10    # "curLevelPath":Landroid/graphics/Path;
    .end local v11    # "lastX":I
    .end local v15    # "lastWifiRunning":Z
    .end local v16    # "lastCpuRunning":Z
    .end local v17    # "lastLinePath":Landroid/graphics/Path;
    .end local v18    # "N":I
    .end local v19    # "batChange":I
    .end local v20    # "batLow":I
    .end local v30    # "curWalltime":J
    .end local v37    # "i":I
    .end local v40    # "lastRealtime":J
    .end local v44    # "lastWifiSupplRunning":Z
    .end local v45    # "lastWifiSupplState":I
    .end local v46    # "levelWidth":I
    .end local v48    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v54    # "walltimeChange":J
    .end local v56    # "walltimeStart":J
    .end local v60    # "x":I
    .end local v61    # "y":I
    :cond_10
    div-int/lit8 v4, v52, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    goto/16 :goto_1

    .line 815
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 816
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    goto/16 :goto_1

    .line 844
    .restart local v34    # "fullBarOffset":I
    .restart local v46    # "levelWidth":I
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 845
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 846
    :cond_14
    const/16 v34, 0x0

    goto/16 :goto_4

    .line 853
    :cond_15
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

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 854
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v4, v4, 0x4

    add-int v4, v4, v34

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 855
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v4, :cond_3

    .line 856
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    goto/16 :goto_5

    .line 875
    .end local v34    # "fullBarOffset":I
    .restart local v56    # "walltimeStart":J
    :cond_16
    const-wide/16 v54, 0x1

    goto/16 :goto_6

    .line 929
    .restart local v5    # "x":I
    .restart local v7    # "levelh":I
    .restart local v8    # "startX":I
    .restart local v9    # "lastY":I
    .restart local v10    # "curLevelPath":Landroid/graphics/Path;
    .restart local v11    # "lastX":I
    .restart local v15    # "lastWifiRunning":Z
    .restart local v16    # "lastCpuRunning":Z
    .restart local v17    # "lastLinePath":Landroid/graphics/Path;
    .restart local v18    # "N":I
    .restart local v19    # "batChange":I
    .restart local v20    # "batLow":I
    .restart local v30    # "curWalltime":J
    .restart local v37    # "i":I
    .restart local v40    # "lastRealtime":J
    .restart local v44    # "lastWifiSupplRunning":Z
    .restart local v45    # "lastWifiSupplState":I
    .restart local v48    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v53    # "value":B
    .restart local v54    # "walltimeChange":J
    .restart local v61    # "y":I
    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    move/from16 v0, v53

    if-gt v0, v4, :cond_18

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v47, v0

    .restart local v47    # "path":Landroid/graphics/Path;
    goto/16 :goto_8

    .line 932
    .end local v47    # "path":Landroid/graphics/Path;
    :cond_18
    const/16 v47, 0x0

    .restart local v47    # "path":Landroid/graphics/Path;
    goto/16 :goto_8

    .line 942
    :cond_19
    if-eqz v47, :cond_7

    .line 943
    int-to-float v4, v5

    move/from16 v0, v61

    int-to-float v6, v0

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_9

    .line 951
    :cond_1a
    int-to-float v4, v5

    move/from16 v0, v61

    int-to-float v6, v0

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_a

    .line 959
    .end local v47    # "path":Landroid/graphics/Path;
    .end local v53    # "value":B
    :cond_1b
    const/16 v27, 0x0

    goto/16 :goto_b

    .line 964
    .restart local v27    # "charging":Z
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    move/from16 v62, v0

    sub-int v62, p2, v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_c

    .line 969
    :cond_1d
    const/16 v49, 0x0

    goto/16 :goto_d

    .line 974
    .restart local v49    # "screenOn":Z
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    move/from16 v62, v0

    sub-int v62, p2, v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_e

    .line 979
    :cond_1f
    const/16 v36, 0x0

    goto/16 :goto_f

    .line 984
    .restart local v36    # "gpsOn":Z
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move/from16 v62, v0

    sub-int v62, p2, v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_10

    .line 1000
    .restart local v59    # "wifiSupplState":I
    :pswitch_1
    const/16 v44, 0x0

    move/from16 v58, v44

    .line 1001
    .local v58, "wifiRunning":I
    goto/16 :goto_11

    .line 1007
    .end local v58    # "wifiRunning":I
    :cond_21
    move/from16 v58, v44

    .local v58, "wifiRunning":Z
    goto/16 :goto_11

    .line 1018
    .end local v58    # "wifiRunning":Z
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move/from16 v62, v0

    sub-int v62, p2, v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_12

    .line 1024
    :cond_23
    const/16 v28, 0x0

    goto/16 :goto_13

    .line 1030
    .restart local v28    # "cpuRunning":Z
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    move/from16 v62, v0

    sub-int v62, p2, v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_14

    .line 1040
    :cond_25
    move-object/from16 v0, v48

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x200000

    and-int/2addr v4, v6

    if-eqz v4, :cond_26

    .line 1041
    const/16 v21, 0x1

    .restart local v21    # "bin":I
    goto/16 :goto_15

    .line 1043
    .end local v21    # "bin":I
    :cond_26
    move-object/from16 v0, v48

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v4, v4, 0x38

    shr-int/lit8 v21, v4, 0x3

    .line 1044
    .restart local v21    # "bin":I
    add-int/lit8 v21, v21, 0x2

    goto/16 :goto_15

    .line 1051
    .end local v5    # "x":I
    .end local v21    # "bin":I
    .end local v27    # "charging":Z
    .end local v28    # "cpuRunning":Z
    .end local v36    # "gpsOn":Z
    .end local v49    # "screenOn":Z
    .end local v59    # "wifiSupplState":I
    .restart local v60    # "x":I
    :cond_27
    move-wide/from16 v42, v30

    .line 1052
    .local v42, "lastWalltime":J
    move-object/from16 v0, v48

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x5

    if-eq v4, v6, :cond_28

    move-object/from16 v0, v48

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x7

    if-ne v4, v6, :cond_29

    .line 1054
    :cond_28
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v62, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v64, v0

    cmp-long v4, v62, v64

    if-ltz v4, :cond_2b

    .line 1055
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v30, v0

    .line 1060
    :goto_17
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v40, v0

    .line 1063
    :cond_29
    move-object/from16 v0, v48

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x6

    if-eq v4, v6, :cond_3f

    move-object/from16 v0, v48

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x5

    if-ne v4, v6, :cond_2a

    sub-long v62, v42, v30

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->abs(J)J

    move-result-wide v62

    const-wide/32 v64, 0x36ee80

    cmp-long v4, v62, v64

    if-lez v4, :cond_3f

    .line 1066
    :cond_2a
    if-eqz v10, :cond_3f

    .line 1067
    add-int/lit8 v5, v60, 0x1

    move-object/from16 v4, p0

    move/from16 v6, p2

    invoke-virtual/range {v4 .. v17}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V

    .line 1071
    const/4 v9, -0x1

    move v11, v9

    .line 1072
    const/4 v10, 0x0

    .line 1073
    const/16 v17, 0x0

    .line 1074
    const/16 v16, 0x0

    move/from16 v14, v16

    .local v14, "lastGpsOn":I
    move/from16 v13, v16

    .local v13, "lastScreenOn":I
    move/from16 v12, v16

    .local v12, "lastCharging":I
    move/from16 v5, v60

    .end local v60    # "x":I
    .restart local v5    # "x":I
    goto/16 :goto_16

    .line 1057
    .end local v5    # "x":I
    .end local v12    # "lastCharging":I
    .end local v13    # "lastScreenOn":I
    .end local v14    # "lastGpsOn":I
    .restart local v60    # "x":I
    :cond_2b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v62, v0

    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v64, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v66, v0

    sub-long v64, v64, v66

    add-long v30, v62, v64

    goto :goto_17

    .line 1081
    .end local v42    # "lastWalltime":J
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v4}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    move/from16 v5, v60

    .line 1084
    .end local v48    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v60    # "x":I
    .restart local v5    # "x":I
    :cond_2d
    if-ltz v9, :cond_2e

    if-gez v11, :cond_3b

    .line 1086
    :cond_2e
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move v5, v11

    .line 1087
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    sub-int v6, v6, v20

    add-int/lit8 v62, v7, -0x1

    mul-int v6, v6, v62

    div-int v6, v6, v19

    sub-int v9, v4, v6

    move/from16 v61, v9

    .line 1090
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    int-to-byte v0, v4

    move/from16 v53, v0

    .line 1091
    .restart local v53    # "value":B
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    move/from16 v0, v53

    if-gt v0, v4, :cond_39

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v47, v0

    .line 1097
    .restart local v47    # "path":Landroid/graphics/Path;
    :goto_18
    if-eqz v47, :cond_2f

    .line 1098
    int-to-float v4, v5

    move/from16 v0, v61

    int-to-float v6, v0

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1099
    move-object/from16 v17, v47

    .line 1101
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1102
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 1103
    move/from16 v5, p1

    .end local v47    # "path":Landroid/graphics/Path;
    .end local v53    # "value":B
    :cond_30
    :goto_19
    move-object/from16 v4, p0

    move/from16 v6, p2

    .line 1113
    invoke-virtual/range {v4 .. v17}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V

    .line 1117
    move/from16 v0, p1

    if-ge v5, v0, :cond_31

    .line 1121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    int-to-float v6, v5

    int-to-float v0, v9

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1122
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    rsub-int/lit8 v6, v20, 0x64

    add-int/lit8 v62, v7, -0x1

    mul-int v6, v6, v62

    div-int v6, v6, v19

    sub-int v35, v4, v6

    .line 1124
    .local v35, "fullY":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    rsub-int/lit8 v6, v20, 0x0

    add-int/lit8 v62, v7, -0x1

    mul-int v6, v6, v62

    div-int v6, v6, v19

    sub-int v29, v4, v6

    .line 1126
    .local v29, "emptyY":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDischarging:Z

    if-eqz v4, :cond_3c

    .line 1127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v6, v6

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1132
    :goto_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 1136
    .end local v29    # "emptyY":I
    .end local v35    # "fullY":I
    :cond_31
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v62, v0

    const-wide/16 v64, 0x0

    cmp-long v4, v62, v64

    if-lez v4, :cond_38

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v62, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v64, v0

    cmp-long v4, v62, v64

    if-lez v4, :cond_38

    .line 1138
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->is24Hour()Z

    move-result v38

    .line 1139
    .local v38, "is24hr":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v26

    .line 1140
    .local v26, "calStart":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v62, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1141
    const/16 v4, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1142
    const/16 v4, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1143
    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1144
    invoke-virtual/range {v26 .. v26}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v50

    .line 1145
    .local v50, "startRoundTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v62, v0

    cmp-long v4, v50, v62

    if-gez v4, :cond_32

    .line 1146
    const/16 v4, 0xb

    const/16 v6, 0xb

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1148
    invoke-virtual/range {v26 .. v26}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v50

    .line 1150
    :cond_32
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v22

    .line 1151
    .local v22, "calEnd":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v62, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1152
    const/16 v4, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1153
    const/16 v4, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1154
    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1155
    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v32

    .line 1156
    .local v32, "endRoundTime":J
    cmp-long v4, v50, v32

    if-gez v4, :cond_34

    .line 1157
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v38

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1158
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v23

    .line 1159
    .local v23, "calMid":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v62, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v64, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v66, v0

    sub-long v64, v64, v66

    const-wide/16 v66, 0x2

    div-long v64, v64, v66

    add-long v62, v62, v64

    move-object/from16 v0, v23

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1161
    const/16 v4, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1162
    const/16 v4, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1163
    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1164
    invoke-virtual/range {v23 .. v23}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v24

    .line 1165
    .local v24, "calMidMillis":J
    cmp-long v4, v24, v50

    if-lez v4, :cond_33

    cmp-long v4, v24, v32

    if-gez v4, :cond_33

    .line 1167
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v38

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1169
    :cond_33
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v38

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1173
    .end local v23    # "calMid":Ljava/util/Calendar;
    .end local v24    # "calMidMillis":J
    :cond_34
    const/4 v4, 0x6

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x6

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v4, v6, :cond_35

    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eq v4, v6, :cond_38

    .line 1176
    :cond_35
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->isDayFirst()Z

    move-result v39

    .line 1177
    .local v39, "isDayFirst":Z
    const/16 v4, 0xb

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1178
    invoke-virtual/range {v26 .. v26}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v50

    .line 1179
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v62, v0

    cmp-long v4, v50, v62

    if-gez v4, :cond_36

    .line 1180
    const/4 v4, 0x6

    const/4 v6, 0x6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1182
    invoke-virtual/range {v26 .. v26}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v50

    .line 1184
    :cond_36
    const/16 v4, 0xb

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1185
    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v32

    .line 1186
    cmp-long v4, v50, v32

    if-gez v4, :cond_37

    .line 1187
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v39

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1188
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v23

    .line 1189
    .restart local v23    # "calMid":Ljava/util/Calendar;
    sub-long v62, v32, v50

    const-wide/16 v64, 0x2

    div-long v62, v62, v64

    add-long v62, v62, v50

    move-object/from16 v0, v23

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1191
    const/16 v4, 0xb

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1192
    invoke-virtual/range {v23 .. v23}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v24

    .line 1193
    .restart local v24    # "calMidMillis":J
    cmp-long v4, v24, v50

    if-lez v4, :cond_37

    cmp-long v4, v24, v32

    if-gez v4, :cond_37

    .line 1195
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v39

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1199
    .end local v23    # "calMid":Ljava/util/Calendar;
    .end local v24    # "calMidMillis":J
    :cond_37
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v39

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1203
    .end local v22    # "calEnd":Ljava/util/Calendar;
    .end local v26    # "calStart":Ljava/util/Calendar;
    .end local v32    # "endRoundTime":J
    .end local v38    # "is24hr":Z
    .end local v39    # "isDayFirst":Z
    .end local v50    # "startRoundTime":J
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x2

    if-ge v4, v6, :cond_3e

    .line 1208
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v62, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v64, v0

    sub-long v62, v62, v64

    const-wide/16 v64, 0x0

    cmp-long v4, v62, v64

    if-lez v4, :cond_3d

    .line 1209
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v62, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v64, v0

    sub-long v62, v62, v64

    move-wide/from16 v0, v62

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    :goto_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1219
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

    .line 1093
    .restart local v53    # "value":B
    :cond_39
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    move/from16 v0, v53

    if-gt v0, v4, :cond_3a

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v47, v0

    .restart local v47    # "path":Landroid/graphics/Path;
    goto/16 :goto_18

    .line 1096
    .end local v47    # "path":Landroid/graphics/Path;
    :cond_3a
    const/16 v47, 0x0

    .restart local v47    # "path":Landroid/graphics/Path;
    goto/16 :goto_18

    .line 1106
    .end local v47    # "path":Landroid/graphics/Path;
    .end local v53    # "value":B
    :cond_3b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    move-wide/from16 v62, v0

    sub-long v62, v62, v56

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v64, v0

    mul-long v62, v62, v64

    div-long v62, v62, v54

    move-wide/from16 v0, v62

    long-to-int v6, v0

    add-int v5, v4, v6

    .line 1108
    if-gez v5, :cond_30

    .line 1109
    const/4 v5, 0x0

    goto/16 :goto_19

    .line 1129
    .restart local v29    # "emptyY":I
    .restart local v35    # "fullY":I
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v6, v6

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v6, v6

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1a

    .line 1212
    .end local v29    # "emptyY":I
    .end local v35    # "fullY":I
    :cond_3d
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 1213
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1b

    .line 1215
    :catch_0
    move-exception v4

    goto :goto_1b

    .line 1223
    :cond_3e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 1224
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    goto/16 :goto_0

    .end local v5    # "x":I
    .restart local v42    # "lastWalltime":J
    .restart local v48    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v60    # "x":I
    :cond_3f
    move/from16 v5, v60

    .end local v60    # "x":I
    .restart local v5    # "x":I
    goto/16 :goto_16

    .line 993
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
    .line 496
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    .line 497
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    .line 502
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    mul-long v12, v32, v34

    .line 504
    .local v12, "elapsedRealtimeUs":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v29, v0

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v12, v13, v1}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v30

    .line 510
    .local v30, "uSecTime":J
    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStatsPeriod:J

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f090791

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f090792

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f090793

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f090794

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f090795

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mCpuRunningLabel:Ljava/lang/String;

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f090796

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    .line 524
    const/16 v29, 0x64

    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    .line 525
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    .line 529
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v6

    .line 530
    .local v6, "batteryPercentString":Ljava/lang/String;
    const-wide/16 v24, 0x0

    .line 531
    .local v24, "remainingTimeUs":J
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDischarging:Z

    .line 532
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

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v10

    .line 539
    .local v10, "drainTime":J
    const-wide/16 v32, 0x0

    cmp-long v29, v10, v32

    if-lez v29, :cond_8

    .line 540
    move-wide/from16 v24, v10

    .line 541
    const-string v28, ""

    .line 543
    .local v28, "timeString":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const-wide/16 v32, 0x3e8

    div-long v32, v10, v32

    move-object/from16 v0, v29

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v28

    .line 548
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v32, 0x7f090786

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v6, v33, v34

    const/16 v34, 0x1

    aput-object v28, v33, v34

    move-object/from16 v0, v29

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    .line 555
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    .line 630
    .end local v10    # "drainTime":J
    .end local v28    # "timeString":Ljava/lang/String;
    :goto_1
    const-string v29, ""

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    .line 631
    const-string v29, ""

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 634
    const/16 v21, 0x0

    .line 635
    .local v21, "pos":I
    const/4 v14, 0x0

    .line 636
    .local v14, "lastInteresting":I
    const/4 v15, -0x1

    .line 637
    .local v15, "lastLevel":B
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatLow:I

    .line 638
    const/16 v29, 0x64

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    .line 639
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 640
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    .line 641
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    .line 642
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistStart:J

    .line 643
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 644
    const-wide/16 v18, 0x0

    .line 645
    .local v18, "lastWallTime":J
    const-wide/16 v16, 0x0

    .line 646
    .local v16, "lastRealtime":J
    const/4 v4, 0x0

    .line 647
    .local v4, "aggrStates":I
    const/4 v5, 0x0

    .line 648
    .local v5, "aggrStates2":I
    const/4 v7, 0x1

    .line 649
    .local v7, "first":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v29

    if-eqz v29, :cond_e

    .line 650
    new-instance v22, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v22 .. v22}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 651
    .local v22, "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_0
    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 652
    add-int/lit8 v21, v21, 0x1

    .line 653
    if-eqz v7, :cond_1

    .line 654
    const/4 v7, 0x0

    .line 655
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistStart:J

    .line 657
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

    .line 673
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

    .line 675
    :cond_3
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 677
    :cond_4
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v18, v0

    .line 678
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v16, v0

    .line 679
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v29, v32, v34

    if-nez v29, :cond_5

    .line 680
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v32, v0

    sub-long v32, v16, v32

    sub-long v32, v18, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 684
    :cond_5
    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v29

    if-eqz v29, :cond_0

    .line 685
    move-object/from16 v0, v22

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v29, v0

    move/from16 v0, v29

    if-ne v0, v15, :cond_6

    const/16 v29, 0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 686
    :cond_6
    move-object/from16 v0, v22

    iget-byte v15, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 688
    :cond_7
    move/from16 v14, v21

    .line 689
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistDataEnd:J

    .line 690
    move-object/from16 v0, v22

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v29, v0

    or-int v4, v4, v29

    .line 691
    move-object/from16 v0, v22

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move/from16 v29, v0

    or-int v5, v5, v29

    goto/16 :goto_2

    .line 559
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

    goto/16 :goto_1

    .line 562
    .end local v10    # "drainTime":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v8

    .line 568
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

    .line 573
    .local v27, "statusLabel":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f0900f9

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mBatteryUSBStatus:Ljava/lang/String;

    .line 579
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

    .line 582
    .local v26, "status":I
    const-wide/16 v32, 0x0

    cmp-long v29, v8, v32

    if-lez v29, :cond_d

    const/16 v29, 0x5

    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_d

    .line 583
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mDischarging:Z

    .line 584
    move-wide/from16 v24, v8

    .line 585
    const-string v28, ""

    .line 587
    .restart local v28    # "timeString":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const-wide/16 v32, 0x3e8

    div-long v32, v8, v32

    move-object/from16 v0, v29

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v28

    .line 593
    :goto_3
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

    .line 596
    .local v20, "plugType":I
    const/16 v29, 0x1

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 597
    const v23, 0x7f090789

    .line 610
    .local v23, "resId":I
    :goto_4
    const v23, 0x7f090788

    .line 614
    :try_start_2
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

    aput-object v28, v32, v33

    move-object/from16 v0, v29

    move/from16 v1, v23

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 616
    :catch_0
    move-exception v29

    goto/16 :goto_1

    .line 598
    .end local v23    # "resId":I
    :cond_a
    const/16 v29, 0x2

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 599
    const v23, 0x7f09078a

    .restart local v23    # "resId":I
    goto :goto_4

    .line 600
    .end local v23    # "resId":I
    :cond_b
    const/16 v29, 0x4

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 601
    const v23, 0x7f09078b

    .restart local v23    # "resId":I
    goto :goto_4

    .line 603
    .end local v23    # "resId":I
    :cond_c
    const v23, 0x7f090788

    .restart local v23    # "resId":I
    goto :goto_4

    .line 624
    .end local v20    # "plugType":I
    .end local v23    # "resId":I
    .end local v28    # "timeString":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v32, 0x7f090787

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v6, v33, v34

    const/16 v34, 0x1

    aput-object v27, v33, v34

    move-object/from16 v0, v29

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    goto/16 :goto_1

    .line 695
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

    .line 696
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistDataEnd:J

    move-wide/from16 v32, v0

    add-long v32, v32, v18

    sub-long v32, v32, v16

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    .line 697
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x3e8

    div-long v34, v24, v34

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    .line 698
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mNumHist:I

    .line 699
    const/high16 v29, 0x20000000

    and-int v29, v29, v4

    if-eqz v29, :cond_12

    const/16 v29, 0x1

    :goto_5
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    .line 700
    const/high16 v29, 0x20000000

    and-int v29, v29, v5

    if-nez v29, :cond_f

    const/high16 v29, 0x1c000000

    and-int v29, v29, v4

    if-eqz v29, :cond_13

    :cond_f
    const/16 v29, 0x1

    :goto_6
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    .line 703
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v29

    if-nez v29, :cond_10

    .line 704
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    .line 706
    :cond_10
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v34, v0

    cmp-long v29, v32, v34

    if-gtz v29, :cond_11

    .line 707
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x1

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 708
    :cond_11
    return-void

    .line 699
    :cond_12
    const/16 v29, 0x0

    goto :goto_5

    .line 700
    :cond_13
    const/16 v29, 0x0

    goto :goto_6

    .line 589
    .end local v4    # "aggrStates":I
    .end local v5    # "aggrStates2":I
    .end local v7    # "first":Z
    .end local v14    # "lastInteresting":I
    .end local v15    # "lastLevel":B
    .end local v16    # "lastRealtime":J
    .end local v18    # "lastWallTime":J
    .end local v21    # "pos":I
    .restart local v8    # "chargeTime":J
    .restart local v26    # "status":I
    .restart local v27    # "statusLabel":Ljava/lang/String;
    .restart local v28    # "timeString":Ljava/lang/String;
    :catch_1
    move-exception v29

    goto/16 :goto_3

    .line 545
    .end local v8    # "chargeTime":J
    .end local v26    # "status":I
    .end local v27    # "statusLabel":Ljava/lang/String;
    .restart local v10    # "drainTime":J
    :catch_2
    move-exception v29

    goto/16 :goto_0
.end method
