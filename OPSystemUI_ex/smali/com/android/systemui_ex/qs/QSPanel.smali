.class public Lcom/android/systemui_ex/qs/QSPanel;
.super Landroid/view/ViewGroup;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/qs/QSPanel$Callback;,
        Lcom/android/systemui_ex/qs/QSPanel$TileRecord;,
        Lcom/android/systemui_ex/qs/QSPanel$Record;,
        Lcom/android/systemui_ex/qs/QSPanel$H;
    }
.end annotation


# instance fields
.field private mBrightnessController:Lcom/android/systemui_ex/settings/BrightnessController;

.field private mBrightnessPaddingTop:I

.field private final mBrightnessView:Landroid/view/View;

.field private mCallback:Lcom/android/systemui_ex/qs/QSPanel$Callback;

.field private mCellHeight:I

.field private mCellWidth:I

.field private final mClipper:Lcom/android/systemui_ex/qs/QSDetailClipper;

.field private mClosingDetail:Z

.field private mColumns:I

.field private final mContext:Landroid/content/Context;

.field private final mDetail:Landroid/view/View;

.field private final mDetailContent:Landroid/view/ViewGroup;

.field private final mDetailDoneButton:Landroid/widget/TextView;

.field private mDetailRecord:Lcom/android/systemui_ex/qs/QSPanel$Record;

.field private final mDetailSettingsButton:Landroid/widget/TextView;

.field private mDualTileUnderlap:I

.field private mExpanded:Z

.field private mFooter:Lcom/android/systemui_ex/qs/QSFooter;

.field private mGridContentVisible:Z

.field private mGridHeight:I

.field private final mHandler:Lcom/android/systemui_ex/qs/QSPanel$H;

.field private final mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

.field private mHost:Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

.field private mLargeCellHeight:I

.field private mLargeCellWidth:I

.field private mListening:Z

.field private mPanelPaddingBottom:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui_ex/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Lcom/android/systemui_ex/qs/QSPanel$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/qs/QSPanel$H;-><init>(Lcom/android/systemui_ex/qs/QSPanel;Lcom/android/systemui_ex/qs/QSPanel$1;)V

    iput-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mHandler:Lcom/android/systemui_ex/qs/QSPanel$H;

    .line 81
    iput-boolean v3, p0, Lcom/android/systemui_ex/qs/QSPanel;->mGridContentVisible:Z

    .line 550
    new-instance v0, Lcom/android/systemui_ex/qs/QSPanel$7;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/qs/QSPanel$7;-><init>(Lcom/android/systemui_ex/qs/QSPanel;)V

    iput-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 558
    new-instance v0, Lcom/android/systemui_ex/qs/QSPanel$8;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/qs/QSPanel$8;-><init>(Lcom/android/systemui_ex/qs/QSPanel;)V

    iput-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 89
    iput-object p1, p0, Lcom/android/systemui_ex/qs/QSPanel;->mContext:Landroid/content/Context;

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040038

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetail:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetail:Landroid/view/View;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    .line 93
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetail:Landroid/view/View;

    const v1, 0x102001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetail:Landroid/view/View;

    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    .line 95
    invoke-direct {p0}, Lcom/android/systemui_ex/qs/QSPanel;->updateDetailText()V

    .line 96
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetail:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 98
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003f

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    .line 100
    new-instance v0, Lcom/android/systemui_ex/qs/QSFooter;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui_ex/qs/QSFooter;-><init>(Lcom/android/systemui_ex/qs/QSPanel;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mFooter:Lcom/android/systemui_ex/qs/QSFooter;

    .line 101
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mFooter:Lcom/android/systemui_ex/qs/QSFooter;

    invoke-virtual {v0}, Lcom/android/systemui_ex/qs/QSFooter;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 104
    new-instance v0, Lcom/android/systemui_ex/qs/QSDetailClipper;

    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/qs/QSDetailClipper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mClipper:Lcom/android/systemui_ex/qs/QSDetailClipper;

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui_ex/qs/QSPanel;->updateResources()V

    .line 107
    new-instance v2, Lcom/android/systemui_ex/settings/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui_ex/qs/QSPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    const v0, 0x7f0f0129

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0f012a

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/settings/ToggleSlider;

    invoke-direct {v2, v3, v0, v1}, Lcom/android/systemui_ex/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui_ex/settings/ToggleSlider;)V

    iput-object v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mBrightnessController:Lcom/android/systemui_ex/settings/BrightnessController;

    .line 111
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui_ex/qs/QSPanel$1;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/qs/QSPanel$1;-><init>(Lcom/android/systemui_ex/qs/QSPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui_ex/qs/QSPanel;Lcom/android/systemui_ex/qs/QSPanel$Record;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/qs/QSPanel;
    .param p1, "x1"    # Lcom/android/systemui_ex/qs/QSPanel$Record;
    .param p2, "x2"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/qs/QSPanel;->handleShowDetail(Lcom/android/systemui_ex/qs/QSPanel$Record;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui_ex/qs/QSPanel;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/qs/QSPanel;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/qs/QSPanel;->handleSetTileVisibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui_ex/qs/QSPanel;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/qs/QSPanel;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui_ex/qs/QSPanel;Lcom/android/systemui_ex/qs/QSPanel$Record;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/qs/QSPanel;
    .param p1, "x1"    # Lcom/android/systemui_ex/qs/QSPanel$Record;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/qs/QSPanel;->setDetailRecord(Lcom/android/systemui_ex/qs/QSPanel$Record;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/systemui_ex/qs/QSPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/qs/QSPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/systemui_ex/qs/QSPanel;->mClosingDetail:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui_ex/qs/QSPanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/qs/QSPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/qs/QSPanel;->setGridContentVisibility(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/qs/QSPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/qs/QSPanel;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mGridContentVisible:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/qs/QSPanel;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/qs/QSPanel;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/qs/QSPanel;->setTileVisibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/qs/QSPanel;ZLcom/android/systemui_ex/qs/QSPanel$Record;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/qs/QSPanel;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/android/systemui_ex/qs/QSPanel$Record;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/qs/QSPanel;->showDetail(ZLcom/android/systemui_ex/qs/QSPanel$Record;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui_ex/qs/QSPanel;)Lcom/android/systemui_ex/qs/QSPanel$Record;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/qs/QSPanel;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetailRecord:Lcom/android/systemui_ex/qs/QSPanel$Record;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui_ex/qs/QSPanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/qs/QSPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/qs/QSPanel;->fireToggleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui_ex/qs/QSPanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/qs/QSPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/qs/QSPanel;->fireScanStateChanged(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui_ex/qs/QSPanel;)Lcom/android/systemui_ex/statusbar/phone/QSTileHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/qs/QSPanel;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mHost:Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method private addTile(Lcom/android/systemui_ex/qs/QSTile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui_ex/qs/QSTile",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "tile":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<*>;"
    new-instance v4, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;-><init>(Lcom/android/systemui_ex/qs/QSPanel$1;)V

    .line 249
    .local v4, "r":Lcom/android/systemui_ex/qs/QSPanel$TileRecord;
    iput-object p1, v4, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui_ex/qs/QSTile;

    .line 250
    iget-object v5, p0, Lcom/android/systemui_ex/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/android/systemui_ex/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui_ex/qs/QSTileView;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/qs/QSTileView;

    .line 251
    iget-object v5, v4, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/qs/QSTileView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/systemui_ex/qs/QSTileView;->setVisibility(I)V

    .line 252
    new-instance v0, Lcom/android/systemui_ex/qs/QSPanel$2;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui_ex/qs/QSPanel$2;-><init>(Lcom/android/systemui_ex/qs/QSPanel;Lcom/android/systemui_ex/qs/QSPanel$TileRecord;)V

    .line 288
    .local v0, "callback":Lcom/android/systemui_ex/qs/QSTile$Callback;
    iget-object v5, v4, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui_ex/qs/QSTile;

    invoke-virtual {v5, v0}, Lcom/android/systemui_ex/qs/QSTile;->setCallback(Lcom/android/systemui_ex/qs/QSTile$Callback;)V

    .line 289
    new-instance v1, Lcom/android/systemui_ex/qs/QSPanel$3;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui_ex/qs/QSPanel$3;-><init>(Lcom/android/systemui_ex/qs/QSPanel;Lcom/android/systemui_ex/qs/QSPanel$TileRecord;)V

    .line 295
    .local v1, "click":Landroid/view/View$OnClickListener;
    new-instance v2, Lcom/android/systemui_ex/qs/QSPanel$4;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui_ex/qs/QSPanel$4;-><init>(Lcom/android/systemui_ex/qs/QSPanel;Lcom/android/systemui_ex/qs/QSPanel$TileRecord;)V

    .line 301
    .local v2, "clickSecondary":Landroid/view/View$OnClickListener;
    new-instance v3, Lcom/android/systemui_ex/qs/QSPanel$5;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui_ex/qs/QSPanel$5;-><init>(Lcom/android/systemui_ex/qs/QSPanel;Lcom/android/systemui_ex/qs/QSPanel$TileRecord;)V

    .line 308
    .local v3, "longClick":Landroid/view/View$OnLongClickListener;
    iget-object v5, v4, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/qs/QSTileView;

    invoke-virtual {v5, v1, v2, v3}, Lcom/android/systemui_ex/qs/QSTileView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 309
    iget-object v5, v4, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui_ex/qs/QSTile;

    iget-boolean v6, p0, Lcom/android/systemui_ex/qs/QSPanel;->mListening:Z

    invoke-virtual {v5, v6}, Lcom/android/systemui_ex/qs/QSTile;->setListening(Z)V

    .line 310
    iget-object v5, v4, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui_ex/qs/QSTile;

    invoke-virtual {v5}, Lcom/android/systemui_ex/qs/QSTile;->getState()Lcom/android/systemui_ex/qs/QSTile$State;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/android/systemui_ex/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui_ex/qs/QSTile$State;)V

    .line 311
    iget-object v5, v4, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui_ex/qs/QSTile;

    invoke-virtual {v5}, Lcom/android/systemui_ex/qs/QSTile;->refreshState()V

    .line 312
    iget-object v5, p0, Lcom/android/systemui_ex/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v5, v4, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/qs/QSTileView;

    invoke-virtual {p0, v5}, Lcom/android/systemui_ex/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 315
    return-void
.end method

.method private static exactly(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 447
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private fireScanStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mCallback:Lcom/android/systemui_ex/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mCallback:Lcom/android/systemui_ex/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui_ex/qs/QSPanel$Callback;->onScanStateChanged(Z)V

    .line 514
    :cond_0
    return-void
.end method

.method private fireShowingDetail(Lcom/android/systemui_ex/qs/QSTile$DetailAdapter;)V
    .locals 1
    .param p1, "detail"    # Lcom/android/systemui_ex/qs/QSTile$DetailAdapter;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mCallback:Lcom/android/systemui_ex/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mCallback:Lcom/android/systemui_ex/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui_ex/qs/QSPanel$Callback;->onShowingDetail(Lcom/android/systemui_ex/qs/QSTile$DetailAdapter;)V

    .line 502
    :cond_0
    return-void
.end method

.method private fireToggleStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mCallback:Lcom/android/systemui_ex/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mCallback:Lcom/android/systemui_ex/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui_ex/qs/QSPanel$Callback;->onToggleStateChanged(Z)V

    .line 508
    :cond_0
    return-void
.end method

.method private getColumnCount(I)I
    .locals 5
    .param p1, "row"    # I

    .prologue
    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, "cols":I
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;

    .line 492
    .local v2, "record":Lcom/android/systemui_ex/qs/QSPanel$TileRecord;
    iget-object v3, v2, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui_ex/qs/QSTileView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 493
    iget v3, v2, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->row:I

    if-ne v3, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    .end local v2    # "record":Lcom/android/systemui_ex/qs/QSPanel$TileRecord;
    :cond_1
    return v0
.end method

.method private getRowTop(I)I
    .locals 3
    .param p1, "row"    # I

    .prologue
    .line 484
    if-gtz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui_ex/qs/QSPanel;->mBrightnessPaddingTop:I

    add-int/2addr v0, v1

    .line 485
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui_ex/qs/QSPanel;->mBrightnessPaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui_ex/qs/QSPanel;->mLargeCellHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDualTileUnderlap:I

    sub-int/2addr v0, v1

    add-int/lit8 v1, p1, -0x1

    iget v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mCellHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private handleSetTileVisibility(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private handleShowDetail(Lcom/android/systemui_ex/qs/QSPanel$Record;Z)V
    .locals 2
    .param p1, "r"    # Lcom/android/systemui_ex/qs/QSPanel$Record;
    .param p2, "show"    # Z

    .prologue
    .line 334
    instance-of v0, p1, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;

    if-eqz v0, :cond_0

    .line 335
    check-cast p1, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;

    .end local p1    # "r":Lcom/android/systemui_ex/qs/QSPanel$Record;
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/qs/QSPanel;->handleShowDetailTile(Lcom/android/systemui_ex/qs/QSPanel$TileRecord;Z)V

    .line 339
    :goto_0
    return-void

    .line 337
    .restart local p1    # "r":Lcom/android/systemui_ex/qs/QSPanel$Record;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/qs/QSPanel;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui_ex/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui_ex/qs/QSPanel$Record;ZII)V

    goto :goto_0
.end method

.method private handleShowDetailImpl(Lcom/android/systemui_ex/qs/QSPanel$Record;ZII)V
    .locals 7
    .param p1, "r"    # Lcom/android/systemui_ex/qs/QSPanel$Record;
    .param p2, "show"    # Z
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 354
    iget-object v4, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetailRecord:Lcom/android/systemui_ex/qs/QSPanel$Record;

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    if-ne v4, p2, :cond_1

    .line 385
    :goto_1
    return-void

    :cond_0
    move v4, v3

    .line 354
    goto :goto_0

    .line 355
    :cond_1
    const/4 v0, 0x0

    .line 356
    .local v0, "detailAdapter":Lcom/android/systemui_ex/qs/QSTile$DetailAdapter;
    const/4 v1, 0x0

    .line 357
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    if-eqz p2, :cond_4

    .line 358
    iget-object v0, p1, Lcom/android/systemui_ex/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui_ex/qs/QSTile$DetailAdapter;

    .line 359
    iget-object v4, p0, Lcom/android/systemui_ex/qs/QSPanel;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/systemui_ex/qs/QSPanel$Record;->detailView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    invoke-interface {v0, v4, v5, v6}, Lcom/android/systemui_ex/qs/QSTile$DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui_ex/qs/QSPanel$Record;->detailView:Landroid/view/View;

    .line 360
    iget-object v4, p1, Lcom/android/systemui_ex/qs/QSPanel$Record;->detailView:Landroid/view/View;

    if-nez v4, :cond_2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Must return detail view"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 362
    :cond_2
    invoke-interface {v0}, Lcom/android/systemui_ex/qs/QSTile$DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v2

    .line 363
    .local v2, "settingsIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    new-instance v4, Lcom/android/systemui_ex/qs/QSPanel$6;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui_ex/qs/QSPanel$6;-><init>(Lcom/android/systemui_ex/qs/QSPanel;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 372
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 373
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    iget-object v4, p1, Lcom/android/systemui_ex/qs/QSPanel$Record;->detailView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 374
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/qs/QSPanel;->setDetailRecord(Lcom/android/systemui_ex/qs/QSPanel$Record;)V

    .line 375
    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSPanel;->mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 382
    .end local v2    # "settingsIntent":Landroid/content/Intent;
    :goto_3
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/qs/QSPanel;->sendAccessibilityEvent(I)V

    .line 383
    if-eqz p2, :cond_5

    .end local v0    # "detailAdapter":Lcom/android/systemui_ex/qs/QSTile$DetailAdapter;
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/qs/QSPanel;->fireShowingDetail(Lcom/android/systemui_ex/qs/QSTile$DetailAdapter;)V

    .line 384
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSPanel;->mClipper:Lcom/android/systemui_ex/qs/QSDetailClipper;

    invoke-virtual {v3, p3, p4, p2, v1}, Lcom/android/systemui_ex/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 363
    .restart local v0    # "detailAdapter":Lcom/android/systemui_ex/qs/QSTile$DetailAdapter;
    .restart local v2    # "settingsIntent":Landroid/content/Intent;
    :cond_3
    const/16 v3, 0x8

    goto :goto_2

    .line 377
    .end local v2    # "settingsIntent":Landroid/content/Intent;
    :cond_4
    iput-boolean v5, p0, Lcom/android/systemui_ex/qs/QSPanel;->mClosingDetail:Z

    .line 378
    invoke-direct {p0, v5}, Lcom/android/systemui_ex/qs/QSPanel;->setGridContentVisibility(Z)V

    .line 379
    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSPanel;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 380
    invoke-direct {p0, v3}, Lcom/android/systemui_ex/qs/QSPanel;->fireScanStateChanged(Z)V

    goto :goto_3

    .line 383
    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private handleShowDetailTile(Lcom/android/systemui_ex/qs/QSPanel$TileRecord;Z)V
    .locals 4
    .param p1, "r"    # Lcom/android/systemui_ex/qs/QSPanel$TileRecord;
    .param p2, "show"    # Z

    .prologue
    .line 342
    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetailRecord:Lcom/android/systemui_ex/qs/QSPanel$Record;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-ne v2, p2, :cond_2

    .line 351
    :cond_0
    :goto_1
    return-void

    .line 342
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 344
    :cond_2
    if-eqz p2, :cond_3

    .line 345
    iget-object v2, p1, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui_ex/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui_ex/qs/QSTile;->getDetailAdapter()Lcom/android/systemui_ex/qs/QSTile$DetailAdapter;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->detailAdapter:Lcom/android/systemui_ex/qs/QSTile$DetailAdapter;

    .line 346
    iget-object v2, p1, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->detailAdapter:Lcom/android/systemui_ex/qs/QSTile$DetailAdapter;

    if-eqz v2, :cond_0

    .line 348
    :cond_3
    iget-object v2, p1, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/qs/QSTileView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/qs/QSTileView;->getLeft()I

    move-result v2

    iget-object v3, p1, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui_ex/qs/QSTileView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 349
    .local v0, "x":I
    iget-object v2, p1, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/qs/QSTileView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/qs/QSTileView;->getTop()I

    move-result v2

    iget-object v3, p1, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui_ex/qs/QSTileView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 350
    .local v1, "y":I
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui_ex/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui_ex/qs/QSPanel$Record;ZII)V

    goto :goto_1
.end method

.method private setDetailRecord(Lcom/android/systemui_ex/qs/QSPanel$Record;)V
    .locals 2
    .param p1, "r"    # Lcom/android/systemui_ex/qs/QSPanel$Record;

    .prologue
    .line 517
    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetailRecord:Lcom/android/systemui_ex/qs/QSPanel$Record;

    if-ne p1, v1, :cond_0

    .line 522
    :goto_0
    return-void

    .line 518
    :cond_0
    iput-object p1, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetailRecord:Lcom/android/systemui_ex/qs/QSPanel$Record;

    .line 519
    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetailRecord:Lcom/android/systemui_ex/qs/QSPanel$Record;

    instance-of v1, v1, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetailRecord:Lcom/android/systemui_ex/qs/QSPanel$Record;

    check-cast v1, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;

    iget-boolean v1, v1, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->scanState:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 521
    .local v0, "scanState":Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/qs/QSPanel;->fireScanStateChanged(Z)V

    goto :goto_0

    .line 519
    .end local v0    # "scanState":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setGridContentVisibility(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    .line 388
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 389
    .local v1, "newVis":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 390
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;

    .line 391
    .local v2, "tileRecord":Lcom/android/systemui_ex/qs/QSPanel$TileRecord;
    iget-object v3, v2, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui_ex/qs/QSTileView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 392
    iget-object v3, v2, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/qs/QSTileView;

    invoke-virtual {v3, v1}, Lcom/android/systemui_ex/qs/QSTileView;->setVisibility(I)V

    .line 389
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 388
    .end local v0    # "i":I
    .end local v1    # "newVis":I
    .end local v2    # "tileRecord":Lcom/android/systemui_ex/qs/QSPanel$TileRecord;
    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    .line 395
    .restart local v0    # "i":I
    .restart local v1    # "newVis":I
    :cond_2
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iput-boolean p1, p0, Lcom/android/systemui_ex/qs/QSPanel;->mGridContentVisible:Z

    .line 397
    return-void
.end method

.method private setTileVisibility(Landroid/view/View;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mHandler:Lcom/android/systemui_ex/qs/QSPanel$H;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/systemui_ex/qs/QSPanel$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 227
    return-void
.end method

.method private showDetail(ZLcom/android/systemui_ex/qs/QSPanel$Record;)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "r"    # Lcom/android/systemui_ex/qs/QSPanel$Record;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 222
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSPanel;->mHandler:Lcom/android/systemui_ex/qs/QSPanel$H;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0, v2, p2}, Lcom/android/systemui_ex/qs/QSPanel$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 223
    return-void

    :cond_0
    move v0, v2

    .line 222
    goto :goto_0
.end method

.method private updateDetailText()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    const v1, 0x7f0c011f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    const v1, 0x7f0c011e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 122
    return-void
.end method


# virtual methods
.method public closeDetail()V
    .locals 2

    .prologue
    .line 322
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetailRecord:Lcom/android/systemui_ex/qs/QSPanel$Record;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/qs/QSPanel;->showDetail(ZLcom/android/systemui_ex/qs/QSPanel$Record;)V

    .line 323
    return-void
.end method

.method public getGridHeight()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mGridHeight:I

    return v0
.end method

.method public getHost()Lcom/android/systemui_ex/statusbar/phone/QSTileHost;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mHost:Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method public isClosingDetail()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mClosingDetail:Z

    return v0
.end method

.method public isShowingDetail()Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetailRecord:Lcom/android/systemui_ex/qs/QSPanel$Record;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v4, 0x7f0d0049

    .line 167
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 168
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lcom/android/systemui_ex/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 169
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetailSettingsButton:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lcom/android/systemui_ex/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 173
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 174
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 175
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;

    iget-object v1, v3, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->detailView:Landroid/view/View;

    .line 176
    .local v1, "detailView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 174
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v1    # "detailView":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSPanel;->mFooter:Lcom/android/systemui_ex/qs/QSFooter;

    invoke-virtual {v3}, Lcom/android/systemui_ex/qs/QSFooter;->onConfigurationChanged()V

    .line 181
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/qs/QSPanel;->getWidth()I

    move-result v16

    .line 453
    .local v16, "w":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/qs/QSPanel;->mBrightnessPaddingTop:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/qs/QSPanel;->mBrightnessPaddingTop:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v21, v21, v22

    invoke-virtual/range {v17 .. v21}, Landroid/view/View;->layout(IIII)V

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/qs/QSPanel;->getLayoutDirection()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const/4 v10, 0x1

    .line 457
    .local v10, "isRtl":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;

    .line 458
    .local v12, "record":Lcom/android/systemui_ex/qs/QSPanel$TileRecord;
    iget-object v0, v12, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/qs/QSTileView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui_ex/qs/QSTileView;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 459
    iget v0, v12, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->row:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/qs/QSPanel;->getColumnCount(I)I

    move-result v4

    .line 460
    .local v4, "cols":I
    iget v0, v12, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->row:I

    move/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui_ex/qs/QSPanel;->mLargeCellWidth:I

    .line 461
    .local v5, "cw":I
    :goto_2
    mul-int v17, v5, v4

    sub-int v17, v16, v17

    add-int/lit8 v18, v4, 0x1

    div-int v7, v17, v18

    .line 462
    .local v7, "extra":I
    iget v0, v12, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->col:I

    move/from16 v17, v0

    mul-int v17, v17, v5

    iget v0, v12, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->col:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    mul-int v18, v18, v7

    add-int v11, v17, v18

    .line 463
    .local v11, "left":I
    iget v0, v12, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->row:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/qs/QSPanel;->getRowTop(I)I

    move-result v15

    .line 465
    .local v15, "top":I
    iget-object v0, v12, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/qs/QSTileView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui_ex/qs/QSTileView;->getMeasuredWidth()I

    move-result v14

    .line 466
    .local v14, "tileWith":I
    if-eqz v10, :cond_3

    .line 467
    sub-int v13, v16, v11

    .line 468
    .local v13, "right":I
    sub-int v11, v13, v14

    .line 472
    :goto_3
    iget-object v0, v12, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/qs/QSTileView;

    move-object/from16 v17, v0

    iget-object v0, v12, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/qs/QSTileView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui_ex/qs/QSTileView;->getMeasuredHeight()I

    move-result v18

    add-int v18, v18, v15

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v11, v15, v13, v1}, Lcom/android/systemui_ex/qs/QSTileView;->layout(IIII)V

    goto :goto_1

    .line 456
    .end local v4    # "cols":I
    .end local v5    # "cw":I
    .end local v7    # "extra":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "isRtl":Z
    .end local v11    # "left":I
    .end local v12    # "record":Lcom/android/systemui_ex/qs/QSPanel$TileRecord;
    .end local v13    # "right":I
    .end local v14    # "tileWith":I
    .end local v15    # "top":I
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 460
    .restart local v4    # "cols":I
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "isRtl":Z
    .restart local v12    # "record":Lcom/android/systemui_ex/qs/QSPanel$TileRecord;
    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui_ex/qs/QSPanel;->mCellWidth:I

    goto :goto_2

    .line 470
    .restart local v5    # "cw":I
    .restart local v7    # "extra":I
    .restart local v11    # "left":I
    .restart local v14    # "tileWith":I
    .restart local v15    # "top":I
    :cond_3
    add-int v13, v11, v14

    .restart local v13    # "right":I
    goto :goto_3

    .line 474
    .end local v4    # "cols":I
    .end local v5    # "cw":I
    .end local v7    # "extra":I
    .end local v11    # "left":I
    .end local v12    # "record":Lcom/android/systemui_ex/qs/QSPanel$TileRecord;
    .end local v13    # "right":I
    .end local v14    # "tileWith":I
    .end local v15    # "top":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/qs/QSPanel;->mDetail:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/qs/QSPanel;->getMeasuredHeight()I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 475
    .local v6, "dh":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/qs/QSPanel;->mDetail:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/qs/QSPanel;->mDetail:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/view/View;->layout(IIII)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/qs/QSPanel;->mFooter:Lcom/android/systemui_ex/qs/QSFooter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui_ex/qs/QSFooter;->hasFooter()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/qs/QSPanel;->mFooter:Lcom/android/systemui_ex/qs/QSFooter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui_ex/qs/QSFooter;->getView()Landroid/view/View;

    move-result-object v8

    .line 478
    .local v8, "footer":Landroid/view/View;
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/qs/QSPanel;->getMeasuredHeight()I

    move-result v18

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    sub-int v18, v18, v19

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/qs/QSPanel;->getMeasuredHeight()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 481
    .end local v8    # "footer":Landroid/view/View;
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 401
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 402
    .local v10, "width":I
    iget-object v11, p0, Lcom/android/systemui_ex/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-static {v10}, Lcom/android/systemui_ex/qs/QSPanel;->exactly(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/View;->measure(II)V

    .line 403
    iget-object v11, p0, Lcom/android/systemui_ex/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iget v12, p0, Lcom/android/systemui_ex/qs/QSPanel;->mBrightnessPaddingTop:I

    add-int v0, v11, v12

    .line 404
    .local v0, "brightnessHeight":I
    iget-object v11, p0, Lcom/android/systemui_ex/qs/QSPanel;->mFooter:Lcom/android/systemui_ex/qs/QSFooter;

    invoke-virtual {v11}, Lcom/android/systemui_ex/qs/QSFooter;->getView()Landroid/view/View;

    move-result-object v11

    invoke-static {v10}, Lcom/android/systemui_ex/qs/QSPanel;->exactly(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/View;->measure(II)V

    .line 405
    const/4 v6, -0x1

    .line 406
    .local v6, "r":I
    const/4 v1, -0x1

    .line 407
    .local v1, "c":I
    const/4 v9, 0x0

    .line 408
    .local v9, "rows":I
    const/4 v8, 0x0

    .line 409
    .local v8, "rowIsDual":Z
    iget-object v11, p0, Lcom/android/systemui_ex/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;

    .line 410
    .local v7, "record":Lcom/android/systemui_ex/qs/QSPanel$TileRecord;
    iget-object v11, v7, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/qs/QSTileView;

    invoke-virtual {v11}, Lcom/android/systemui_ex/qs/QSTileView;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_0

    .line 413
    const/4 v11, -0x1

    if-eq v6, v11, :cond_1

    iget v11, p0, Lcom/android/systemui_ex/qs/QSPanel;->mColumns:I

    add-int/lit8 v11, v11, -0x1

    if-eq v1, v11, :cond_1

    iget-object v11, v7, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui_ex/qs/QSTile;

    invoke-virtual {v11}, Lcom/android/systemui_ex/qs/QSTile;->supportsDualTargets()Z

    move-result v11

    if-eq v8, v11, :cond_2

    .line 414
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 415
    const/4 v1, 0x0

    .line 416
    iget-object v11, v7, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui_ex/qs/QSTile;

    invoke-virtual {v11}, Lcom/android/systemui_ex/qs/QSTile;->supportsDualTargets()Z

    move-result v8

    .line 420
    :goto_1
    iput v6, v7, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->row:I

    .line 421
    iput v1, v7, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->col:I

    .line 422
    add-int/lit8 v9, v6, 0x1

    .line 423
    goto :goto_0

    .line 418
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 425
    .end local v7    # "record":Lcom/android/systemui_ex/qs/QSPanel$TileRecord;
    :cond_3
    iget-object v11, p0, Lcom/android/systemui_ex/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;

    .line 426
    .restart local v7    # "record":Lcom/android/systemui_ex/qs/QSPanel$TileRecord;
    iget-object v11, v7, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/qs/QSTileView;

    iget-object v12, v7, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui_ex/qs/QSTile;

    invoke-virtual {v12}, Lcom/android/systemui_ex/qs/QSTile;->supportsDualTargets()Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/systemui_ex/qs/QSTileView;->setDual(Z)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 427
    iget-object v11, v7, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/qs/QSTileView;

    iget-object v12, v7, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui_ex/qs/QSTile;

    invoke-virtual {v12}, Lcom/android/systemui_ex/qs/QSTile;->getState()Lcom/android/systemui_ex/qs/QSTile$State;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/systemui_ex/qs/QSTileView;->handleStateChanged(Lcom/android/systemui_ex/qs/QSTile$State;)V

    .line 429
    :cond_5
    iget-object v11, v7, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/qs/QSTileView;

    invoke-virtual {v11}, Lcom/android/systemui_ex/qs/QSTileView;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_4

    .line 430
    iget v11, v7, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->row:I

    if-nez v11, :cond_6

    iget v3, p0, Lcom/android/systemui_ex/qs/QSPanel;->mLargeCellWidth:I

    .line 431
    .local v3, "cw":I
    :goto_3
    iget v11, v7, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->row:I

    if-nez v11, :cond_7

    iget v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mLargeCellHeight:I

    .line 432
    .local v2, "ch":I
    :goto_4
    iget-object v11, v7, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/qs/QSTileView;

    invoke-static {v3}, Lcom/android/systemui_ex/qs/QSPanel;->exactly(I)I

    move-result v12

    invoke-static {v2}, Lcom/android/systemui_ex/qs/QSPanel;->exactly(I)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/android/systemui_ex/qs/QSTileView;->measure(II)V

    goto :goto_2

    .line 430
    .end local v2    # "ch":I
    .end local v3    # "cw":I
    :cond_6
    iget v3, p0, Lcom/android/systemui_ex/qs/QSPanel;->mCellWidth:I

    goto :goto_3

    .line 431
    .restart local v3    # "cw":I
    :cond_7
    iget v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mCellHeight:I

    goto :goto_4

    .line 434
    .end local v3    # "cw":I
    .end local v7    # "record":Lcom/android/systemui_ex/qs/QSPanel$TileRecord;
    :cond_8
    if-nez v9, :cond_b

    move v4, v0

    .line 435
    .local v4, "h":I
    :goto_5
    iget-object v11, p0, Lcom/android/systemui_ex/qs/QSPanel;->mFooter:Lcom/android/systemui_ex/qs/QSFooter;

    invoke-virtual {v11}, Lcom/android/systemui_ex/qs/QSFooter;->hasFooter()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 436
    iget-object v11, p0, Lcom/android/systemui_ex/qs/QSPanel;->mFooter:Lcom/android/systemui_ex/qs/QSFooter;

    invoke-virtual {v11}, Lcom/android/systemui_ex/qs/QSFooter;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v4, v11

    .line 438
    :cond_9
    iget-object v11, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-static {v10}, Lcom/android/systemui_ex/qs/QSPanel;->exactly(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/View;->measure(II)V

    .line 439
    iget-object v11, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    if-ge v11, v4, :cond_a

    .line 440
    iget-object v11, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-static {v10}, Lcom/android/systemui_ex/qs/QSPanel;->exactly(I)I

    move-result v12

    invoke-static {v4}, Lcom/android/systemui_ex/qs/QSPanel;->exactly(I)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/view/View;->measure(II)V

    .line 442
    :cond_a
    iput v4, p0, Lcom/android/systemui_ex/qs/QSPanel;->mGridHeight:I

    .line 443
    iget-object v11, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lcom/android/systemui_ex/qs/QSPanel;->setMeasuredDimension(II)V

    .line 444
    return-void

    .line 434
    .end local v4    # "h":I
    :cond_b
    invoke-direct {p0, v9}, Lcom/android/systemui_ex/qs/QSPanel;->getRowTop(I)I

    move-result v11

    iget v12, p0, Lcom/android/systemui_ex/qs/QSPanel;->mPanelPaddingBottom:I

    add-int v4, v11, v12

    goto :goto_5
.end method

.method public refreshAllTiles()V
    .locals 3

    .prologue
    .line 209
    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;

    .line 210
    .local v1, "r":Lcom/android/systemui_ex/qs/QSPanel$TileRecord;
    iget-object v2, v1, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui_ex/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui_ex/qs/QSTile;->refreshState()V

    goto :goto_0

    .line 212
    .end local v1    # "r":Lcom/android/systemui_ex/qs/QSPanel$TileRecord;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mFooter:Lcom/android/systemui_ex/qs/QSFooter;

    invoke-virtual {v2}, Lcom/android/systemui_ex/qs/QSFooter;->refreshState()V

    .line 213
    return-void
.end method

.method public setBrightnessMirror(Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;)V
    .locals 4
    .param p1, "c"    # Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;

    .prologue
    const v3, 0x7f0f012a

    .line 125
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 126
    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/settings/ToggleSlider;

    .line 127
    .local v0, "brightnessSlider":Lcom/android/systemui_ex/settings/ToggleSlider;
    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/settings/ToggleSlider;

    .line 128
    .local v1, "mirror":Lcom/android/systemui_ex/settings/ToggleSlider;
    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/settings/ToggleSlider;->setMirror(Lcom/android/systemui_ex/settings/ToggleSlider;)V

    .line 129
    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/settings/ToggleSlider;->setMirrorController(Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;)V

    .line 130
    return-void
.end method

.method public setCallback(Lcom/android/systemui_ex/qs/QSPanel$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui_ex/qs/QSPanel$Callback;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/systemui_ex/qs/QSPanel;->mCallback:Lcom/android/systemui_ex/qs/QSPanel$Callback;

    .line 134
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mExpanded:Z

    if-ne v0, p1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui_ex/qs/QSPanel;->mExpanded:Z

    .line 186
    iget-boolean v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mExpanded:Z

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui_ex/qs/QSPanel;->closeDetail()V

    goto :goto_0
.end method

.method public setHost(Lcom/android/systemui_ex/statusbar/phone/QSTileHost;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/systemui_ex/qs/QSPanel;->mHost:Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

    .line 138
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mFooter:Lcom/android/systemui_ex/qs/QSFooter;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/qs/QSFooter;->setHost(Lcom/android/systemui_ex/statusbar/phone/QSTileHost;)V

    .line 139
    return-void
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    .line 192
    iget-boolean v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mListening:Z

    if-ne v2, p1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 193
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui_ex/qs/QSPanel;->mListening:Z

    .line 194
    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;

    .line 195
    .local v1, "r":Lcom/android/systemui_ex/qs/QSPanel$TileRecord;
    iget-object v2, v1, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui_ex/qs/QSTile;

    iget-boolean v3, p0, Lcom/android/systemui_ex/qs/QSPanel;->mListening:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/qs/QSTile;->setListening(Z)V

    goto :goto_1

    .line 197
    .end local v1    # "r":Lcom/android/systemui_ex/qs/QSPanel$TileRecord;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mFooter:Lcom/android/systemui_ex/qs/QSFooter;

    iget-boolean v3, p0, Lcom/android/systemui_ex/qs/QSPanel;->mListening:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/qs/QSFooter;->setListening(Z)V

    .line 198
    iget-boolean v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mListening:Z

    if-eqz v2, :cond_2

    .line 199
    invoke-virtual {p0}, Lcom/android/systemui_ex/qs/QSPanel;->refreshAllTiles()V

    .line 201
    :cond_2
    if-eqz p1, :cond_3

    .line 202
    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mBrightnessController:Lcom/android/systemui_ex/settings/BrightnessController;

    invoke-virtual {v2}, Lcom/android/systemui_ex/settings/BrightnessController;->registerCallbacks()V

    goto :goto_0

    .line 204
    :cond_3
    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mBrightnessController:Lcom/android/systemui_ex/settings/BrightnessController;

    invoke-virtual {v2}, Lcom/android/systemui_ex/settings/BrightnessController;->unregisterCallbacks()V

    goto :goto_0
.end method

.method public setTiles(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui_ex/qs/QSTile",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui_ex/qs/QSTile<*>;>;"
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;

    .line 236
    .local v1, "record":Lcom/android/systemui_ex/qs/QSPanel$TileRecord;
    iget-object v3, v1, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui_ex/qs/QSTileView;

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/qs/QSPanel;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 238
    .end local v1    # "record":Lcom/android/systemui_ex/qs/QSPanel$TileRecord;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 239
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/qs/QSTile;

    .line 240
    .local v2, "tile":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<*>;"
    invoke-direct {p0, v2}, Lcom/android/systemui_ex/qs/QSPanel;->addTile(Lcom/android/systemui_ex/qs/QSTile;)V

    goto :goto_1

    .line 242
    .end local v2    # "tile":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<*>;"
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui_ex/qs/QSPanel;->isShowingDetail()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 243
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 245
    :cond_2
    return-void
.end method

.method public showDetailAdapter(ZLcom/android/systemui_ex/qs/QSTile$DetailAdapter;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "adapter"    # Lcom/android/systemui_ex/qs/QSTile$DetailAdapter;

    .prologue
    .line 216
    new-instance v0, Lcom/android/systemui_ex/qs/QSPanel$Record;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/qs/QSPanel$Record;-><init>(Lcom/android/systemui_ex/qs/QSPanel$1;)V

    .line 217
    .local v0, "r":Lcom/android/systemui_ex/qs/QSPanel$Record;
    iput-object p2, v0, Lcom/android/systemui_ex/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui_ex/qs/QSTile$DetailAdapter;

    .line 218
    invoke-direct {p0, p1, v0}, Lcom/android/systemui_ex/qs/QSPanel;->showDetail(ZLcom/android/systemui_ex/qs/QSPanel$Record;)V

    .line 219
    return-void
.end method

.method public updateResources()V
    .locals 5

    .prologue
    const v4, 0x3f99999a    # 1.2f

    .line 146
    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 147
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v2, 0x1

    const v3, 0x7f0a000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 148
    .local v0, "columns":I
    const v2, 0x7f0d0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mCellHeight:I

    .line 149
    iget v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mCellHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mCellWidth:I

    .line 150
    const v2, 0x7f0d003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mLargeCellHeight:I

    .line 151
    iget v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mLargeCellHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mLargeCellWidth:I

    .line 152
    const v2, 0x7f0d0044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mPanelPaddingBottom:I

    .line 153
    const v2, 0x7f0d003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mDualTileUnderlap:I

    .line 154
    const v2, 0x7f0d0047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mBrightnessPaddingTop:I

    .line 155
    iget v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mColumns:I

    if-eq v2, v0, :cond_0

    .line 156
    iput v0, p0, Lcom/android/systemui_ex/qs/QSPanel;->mColumns:I

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui_ex/qs/QSPanel;->postInvalidate()V

    .line 159
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui_ex/qs/QSPanel;->mListening:Z

    if-eqz v2, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui_ex/qs/QSPanel;->refreshAllTiles()V

    .line 162
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/qs/QSPanel;->updateDetailText()V

    .line 163
    return-void
.end method
