.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooserRowAdapter"
.end annotation


# instance fields
.field private mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

.field private final mColumnCount:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;[Lcom/android/internal/app/ChooserActivity$RowScale;)[Lcom/android/internal/app/ChooserActivity$RowScale;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;I)F
    .locals 1
    .param p1, "rowPosition"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getRowScale(I)F

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "wrappedAdapter"    # Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1128
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    .line 1133
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 1134
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1137
    const v0, 0x10c0005

    .line 1136
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1139
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1132
    return-void
.end method

.method private getRowScale(I)F
    .locals 4
    .param p1, "rowPosition"    # I

    .prologue
    .line 1191
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getCallerTargetRowCount()I

    move-result v1

    .line 1192
    .local v1, "start":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    move-result v2

    add-int v0, v1, v2

    .line 1193
    .local v0, "end":I
    if-lt p1, v1, :cond_0

    if-ge p1, v0, :cond_0

    .line 1194
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;

    sub-int v3, p1, v1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$RowScale;->get()F

    move-result v2

    return v2

    .line 1196
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    return v2
.end method


# virtual methods
.method bindViewHolder(ILcom/android/internal/app/ChooserActivity$RowViewHolder;)V
    .locals 15
    .param p1, "rowPosition"    # I
    .param p2, "holder"    # Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    .prologue
    .line 1294
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getFirstRowPosition(I)I

    move-result v5

    .line 1295
    .local v5, "start":I
    iget-object v10, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v10, v5}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v6

    .line 1297
    .local v6, "startType":I
    add-int/lit8 v10, v5, 0x4

    add-int/lit8 v2, v10, -0x1

    .line 1298
    .local v2, "end":I
    :goto_0
    iget-object v10, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v10, v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v10

    if-eq v10, v6, :cond_0

    if-lt v2, v5, :cond_0

    .line 1299
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1302
    :cond_0
    const/4 v10, 0x1

    if-ne v6, v10, :cond_2

    .line 1305
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 1306
    .local v8, "typedValue":Landroid/util/TypedValue;
    iget-object v10, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v10}, Lcom/android/internal/app/ChooserActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 1307
    .local v7, "theme":Landroid/content/res/Resources$Theme;
    const v10, 0x1010031

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v8, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1308
    iget v1, v8, Landroid/util/TypedValue;->data:I

    .line 1309
    .local v1, "color":I
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    .line 1310
    iget-object v11, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v11}, Landroid/content/res/ThemeController;->getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [I

    iget-object v13, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v14, 0x1060073

    invoke-virtual {v13, v14}, Lcom/android/internal/app/ChooserActivity;->getColor(I)I

    move-result v13

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v13, 0x1

    aput v1, v12, v13

    invoke-virtual {v11, v12}, Landroid/content/res/ThemeController;->getCorrectThemeResource([I)I

    move-result v11

    .line 1309
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1318
    .end local v1    # "color":I
    .end local v7    # "theme":Landroid/content/res/Resources$Theme;
    .end local v8    # "typedValue":Landroid/util/TypedValue;
    :goto_1
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v4, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1319
    .local v4, "oldHeight":I
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 1320
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    int-to-float v11, v11

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getRowScale(I)F

    move-result v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 1319
    const/4 v12, 0x1

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1321
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v10, v4, :cond_1

    .line 1322
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1325
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    const/4 v10, 0x4

    if-ge v3, v10, :cond_4

    .line 1326
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->cells:[Landroid/view/View;

    aget-object v9, v10, v3

    .line 1327
    .local v9, "v":Landroid/view/View;
    add-int v10, v5, v3

    if-gt v10, v2, :cond_3

    .line 1328
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1329
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    add-int v11, v5, v3

    aput v11, v10, v3

    .line 1330
    iget-object v10, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    aget v11, v11, v3

    invoke-virtual {v10, v11, v9}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->bindView(ILandroid/view/View;)V

    .line 1325
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1315
    .end local v3    # "i":I
    .end local v4    # "oldHeight":I
    .end local v9    # "v":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_1

    .line 1332
    .restart local v3    # "i":I
    .restart local v4    # "oldHeight":I
    .restart local v9    # "v":Landroid/view/View;
    :cond_3
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1293
    .end local v9    # "v":Landroid/view/View;
    :cond_4
    return-void
.end method

.method createViewHolder(Landroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    .locals 12
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x4

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 1243
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v8, 0x1090045

    invoke-virtual {v7, v8, p1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1245
    .local v4, "row":Landroid/view/ViewGroup;
    new-instance v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    invoke-direct {v1, v4, v11}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;-><init>(Landroid/view/ViewGroup;I)V

    .line 1246
    .local v1, "holder":Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1248
    .local v5, "spec":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v11, :cond_1

    .line 1249
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v7, v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1250
    .local v6, "v":Landroid/view/View;
    move v0, v2

    .line 1251
    .local v0, "column":I
    new-instance v7, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;

    invoke-direct {v7, p0, v1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity$RowViewHolder;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1257
    new-instance v7, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;

    invoke-direct {v7, p0, v1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity$RowViewHolder;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1266
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1267
    iget-object v7, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->cells:[Landroid/view/View;

    aput-object v6, v7, v2

    .line 1270
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1271
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v6, v5, v5}, Landroid/view/View;->measure(II)V

    .line 1272
    if-nez v3, :cond_0

    .line 1273
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-direct {v3, v10, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1274
    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1248
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1276
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 1281
    .end local v0    # "column":I
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measure()V

    .line 1282
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1283
    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_2

    .line 1284
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v7, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    invoke-direct {v3, v10, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1285
    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1289
    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1290
    return-object v1

    .line 1287
    :cond_2
    iget v7, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2
.end method

.method public getCallerTargetRowCount()I
    .locals 2

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 1209
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getCallerTargetRowCount()I

    move-result v0

    .line 1203
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    move-result v1

    .line 1202
    add-int/2addr v0, v1

    int-to-double v0, v0

    .line 1204
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 1201
    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method getFirstRowPosition(I)I
    .locals 7
    .param p1, "row"    # I

    .prologue
    const/high16 v6, 0x40800000    # 4.0f

    .line 1338
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    .line 1339
    .local v0, "callerCount":I
    int-to-float v4, v0

    div-float/2addr v4, v6

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 1341
    .local v1, "callerRows":I
    if-ge p1, v1, :cond_0

    .line 1342
    mul-int/lit8 v4, p1, 0x4

    return v4

    .line 1345
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v2

    .line 1346
    .local v2, "serviceCount":I
    int-to-float v4, v2

    div-float/2addr v4, v6

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 1348
    .local v3, "serviceRows":I
    add-int v4, v1, v3

    if-ge p1, v4, :cond_1

    .line 1349
    sub-int v4, p1, v1

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v0

    return v4

    .line 1352
    :cond_1
    add-int v4, v0, v2

    .line 1353
    sub-int v5, p1, v1

    sub-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0x4

    .line 1352
    add-int/2addr v4, v5

    return v4
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1226
    int-to-long v0, p1

    return-wide v0
.end method

.method public getServiceTargetRowCount()I
    .locals 2

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 1214
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1232
    if-nez p2, :cond_0

    .line 1233
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->createViewHolder(Landroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    move-result-object v0

    .line 1237
    .local v0, "holder":Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->bindViewHolder(ILcom/android/internal/app/ChooserActivity$RowViewHolder;)V

    .line 1239
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    return-object v1

    .line 1235
    .end local v0    # "holder":Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    .restart local v0    # "holder":Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    goto :goto_0
.end method
