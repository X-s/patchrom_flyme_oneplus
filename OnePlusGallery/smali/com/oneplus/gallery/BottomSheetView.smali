.class public Lcom/oneplus/gallery/BottomSheetView;
.super Landroid/view/ViewGroup;
.source "BottomSheetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/BottomSheetView$BottomSheetItemInfo;,
        Lcom/oneplus/gallery/BottomSheetView$ViewHolder;,
        Lcom/oneplus/gallery/BottomSheetView$BottomSheetListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_BOTTOM_SHEET_RATIO:F = 0.4f

.field private static final ENABLE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final VELOCITY_BOTTON_SHEET_ANIMATION:F = 1.0f


# instance fields
.field private m_BottomSheetContainer:Landroid/view/View;

.field private m_BottomSheetItemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/BottomSheetView$BottomSheetItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_BottomSheetListener:Lcom/oneplus/gallery/BottomSheetView$BottomSheetListener;

.field private m_Context:Landroid/content/Context;

.field private m_GestureDetector:Landroid/view/GestureDetector;

.field private m_IsSetupUI:Z

.field private m_ItemCountTextColor:I

.field private m_ItemTitleTextColor:I

.field private m_ListView:Landroid/widget/ListView;

.field private m_ListViewAdapter:Landroid/widget/BaseAdapter;

.field private m_MainContainer:Landroid/view/View;

.field private m_TitleText:Landroid/widget/TextView;

.field private m_TouchReceiver:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/oneplus/gallery/BottomSheetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/BottomSheetView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/BottomSheetView$BottomSheetItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p2, "itemInfos":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/BottomSheetView$BottomSheetItemInfo;>;"
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_BottomSheetItemInfos:Ljava/util/List;

    .line 62
    new-instance v0, Lcom/oneplus/gallery/BottomSheetView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/BottomSheetView$1;-><init>(Lcom/oneplus/gallery/BottomSheetView;)V

    iput-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_ListViewAdapter:Landroid/widget/BaseAdapter;

    .line 194
    iput-object p1, p0, Lcom/oneplus/gallery/BottomSheetView;->m_Context:Landroid/content/Context;

    .line 195
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_BottomSheetItemInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 196
    iput-object p2, p0, Lcom/oneplus/gallery/BottomSheetView;->m_BottomSheetItemInfos:Ljava/util/List;

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/BottomSheetView;->setupUI()V

    .line 198
    const v0, 0x3ecccccd    # 0.4f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery/BottomSheetView;->setBottomSheetPositionRatio(FZ)V

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/BottomSheetView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/BottomSheetView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/BottomSheetView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/BottomSheetView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_BottomSheetItemInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/gallery/BottomSheetView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/BottomSheetView;

    .prologue
    .line 21
    iget v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_ItemTitleTextColor:I

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/gallery/BottomSheetView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/BottomSheetView;

    .prologue
    .line 21
    iget v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_ItemCountTextColor:I

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/gallery/BottomSheetView;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/BottomSheetView;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/BottomSheetView;->onBottomSheetItemClicked(IJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/gallery/BottomSheetView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/BottomSheetView;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/oneplus/gallery/BottomSheetView;->onOutsideListViewClicked()V

    return-void
.end method

.method private getBottomSheetPosition()F
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_IsSetupUI:Z

    if-nez v0, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 207
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_BottomSheetContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0
.end method

.method private onBottomSheetItemClicked(IJ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 223
    iget-object v1, p0, Lcom/oneplus/gallery/BottomSheetView;->m_BottomSheetItemInfos:Ljava/util/List;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/BottomSheetView;->m_BottomSheetItemInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/oneplus/gallery/BottomSheetView;->m_BottomSheetItemInfos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/BottomSheetView$BottomSheetItemInfo;

    .line 226
    .local v0, "info":Lcom/oneplus/gallery/BottomSheetView$BottomSheetItemInfo;
    iget-object v1, p0, Lcom/oneplus/gallery/BottomSheetView;->m_BottomSheetListener:Lcom/oneplus/gallery/BottomSheetView$BottomSheetListener;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/oneplus/gallery/BottomSheetView;->m_BottomSheetListener:Lcom/oneplus/gallery/BottomSheetView$BottomSheetListener;

    iget-wide v2, v0, Lcom/oneplus/gallery/BottomSheetView$BottomSheetItemInfo;->id:J

    invoke-interface {v1, p1, v2, v3}, Lcom/oneplus/gallery/BottomSheetView$BottomSheetListener;->onItemClicked(IJ)V

    .line 229
    .end local v0    # "info":Lcom/oneplus/gallery/BottomSheetView$BottomSheetItemInfo;
    :cond_0
    return-void
.end method

.method private onOutsideListViewClicked()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_BottomSheetListener:Lcom/oneplus/gallery/BottomSheetView$BottomSheetListener;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_BottomSheetListener:Lcom/oneplus/gallery/BottomSheetView$BottomSheetListener;

    invoke-interface {v0}, Lcom/oneplus/gallery/BottomSheetView$BottomSheetListener;->onOutsideListViewClicked()V

    .line 249
    :cond_0
    return-void
.end method

.method private setBottomSheetPosition(FZ)V
    .locals 3
    .param p1, "yPosition"    # F
    .param p2, "animation"    # Z

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_IsSetupUI:Z

    if-nez v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/BottomSheetView;->TAG:Ljava/lang/String;

    const-string v1, "setBottomSheetPosition() - yPosition: "

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/BottomSheetView;->updateBottomSheetPosition(FZ)V

    goto :goto_0
.end method

.method private setBottomSheetPositionRatio(FZ)V
    .locals 3
    .param p1, "ratio"    # F
    .param p2, "animation"    # Z

    .prologue
    .line 281
    iget-boolean v1, p0, Lcom/oneplus/gallery/BottomSheetView;->m_IsSetupUI:Z

    if-nez v1, :cond_0

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/BottomSheetView;->m_MainContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 284
    .local v0, "containerHeight":I
    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    invoke-direct {p0, v1, p2}, Lcom/oneplus/gallery/BottomSheetView;->setBottomSheetPosition(FZ)V

    goto :goto_0
.end method

.method private setupUI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 314
    iget-boolean v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_IsSetupUI:Z

    if-eqz v0, :cond_0

    .line 316
    const v0, 0x3ecccccd    # 0.4f

    invoke-direct {p0, v0, v3}, Lcom/oneplus/gallery/BottomSheetView;->setBottomSheetPositionRatio(FZ)V

    .line 379
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_Context:Landroid/content/Context;

    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_MainContainer:Landroid/view/View;

    .line 322
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_MainContainer:Landroid/view/View;

    const v1, 0x7f060027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_BottomSheetContainer:Landroid/view/View;

    .line 323
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_BottomSheetContainer:Landroid/view/View;

    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_ListView:Landroid/widget/ListView;

    .line 324
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_BottomSheetContainer:Landroid/view/View;

    const v1, 0x7f060028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_TitleText:Landroid/widget/TextView;

    .line 325
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_TitleText:Landroid/widget/TextView;

    new-instance v1, Lcom/oneplus/gallery/BottomSheetView$2;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/BottomSheetView$2;-><init>(Lcom/oneplus/gallery/BottomSheetView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_MainContainer:Landroid/view/View;

    const v1, 0x7f060026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_TouchReceiver:Landroid/view/View;

    .line 336
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_ListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oneplus/gallery/BottomSheetView;->m_ListViewAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 337
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_ListView:Landroid/widget/ListView;

    new-instance v1, Lcom/oneplus/gallery/BottomSheetView$3;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/BottomSheetView$3;-><init>(Lcom/oneplus/gallery/BottomSheetView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 345
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_ListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 348
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_TouchReceiver:Landroid/view/View;

    new-instance v1, Lcom/oneplus/gallery/BottomSheetView$4;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/BottomSheetView$4;-><init>(Lcom/oneplus/gallery/BottomSheetView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_ListView:Landroid/widget/ListView;

    new-instance v1, Lcom/oneplus/gallery/BottomSheetView$5;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/BottomSheetView$5;-><init>(Lcom/oneplus/gallery/BottomSheetView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 376
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_MainContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/BottomSheetView;->addView(Landroid/view/View;)V

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_IsSetupUI:Z

    goto :goto_0
.end method

.method private updateBottomSheetPosition(FZ)V
    .locals 6
    .param p1, "yPosition"    # F
    .param p2, "animation"    # Z

    .prologue
    .line 385
    iget-boolean v2, p0, Lcom/oneplus/gallery/BottomSheetView;->m_IsSetupUI:Z

    if-nez v2, :cond_0

    .line 398
    :goto_0
    return-void

    .line 387
    :cond_0
    if-eqz p2, :cond_1

    .line 389
    iget-object v2, p0, Lcom/oneplus/gallery/BottomSheetView;->m_BottomSheetContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 390
    iget-object v2, p0, Lcom/oneplus/gallery/BottomSheetView;->m_BottomSheetContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .line 391
    .local v1, "oldYPosition":F
    sub-float v2, p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 392
    .local v0, "duration":I
    iget-object v2, p0, Lcom/oneplus/gallery/BottomSheetView;->m_BottomSheetContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 396
    .end local v0    # "duration":I
    .end local v1    # "oldYPosition":F
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/BottomSheetView;->m_BottomSheetContainer:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_MainContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_MainContainer:Landroid/view/View;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 217
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_MainContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_MainContainer:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 239
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_MainContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/gallery/BottomSheetView;->m_MainContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/BottomSheetView;->setMeasuredDimension(II)V

    .line 241
    :cond_0
    return-void
.end method

.method public setBottomSheetBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_IsSetupUI:Z

    if-nez v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_BottomSheetContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBottomSheetListener(Lcom/oneplus/gallery/BottomSheetView$BottomSheetListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/gallery/BottomSheetView$BottomSheetListener;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/oneplus/gallery/BottomSheetView;->m_BottomSheetListener:Lcom/oneplus/gallery/BottomSheetView$BottomSheetListener;

    .line 265
    return-void
.end method

.method public setItemCountTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_IsSetupUI:Z

    if-nez v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 307
    :cond_0
    iput p1, p0, Lcom/oneplus/gallery/BottomSheetView;->m_ItemCountTextColor:I

    goto :goto_0
.end method

.method public setItemTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_IsSetupUI:Z

    if-nez v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 300
    :cond_0
    iput p1, p0, Lcom/oneplus/gallery/BottomSheetView;->m_ItemTitleTextColor:I

    goto :goto_0
.end method

.method public setListTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_IsSetupUI:Z

    if-nez v0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_TitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/oneplus/gallery/BottomSheetView;->m_TitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
