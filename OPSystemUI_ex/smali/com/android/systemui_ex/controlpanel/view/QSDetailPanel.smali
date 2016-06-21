.class public Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;
.super Ljava/lang/Object;
.source "QSDetailPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$Callback;
    }
.end annotation


# instance fields
.field private mButtonDone:Landroid/widget/TextView;

.field private mButtonMore:Landroid/widget/TextView;

.field private mCallback:Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$Callback;

.field private mContext:Landroid/content/Context;

.field private mDetailContent:Landroid/view/ViewGroup;

.field private mDetailView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mLauncherColorController:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

.field private mQSPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$2;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$2;-><init>(Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mHandler:Landroid/os/Handler;

    .line 31
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mContext:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mLauncherColorController:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;)Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mCallback:Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;)Lcom/android/systemui_ex/controlpanel/qs/QSPanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mQSPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->handleClearDetailContent()V

    return-void
.end method

.method private getDetailButtonMore()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mButtonMore:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->getDetailView()Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "detail":Landroid/view/View;
    const v1, 0x102001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mButtonMore:Landroid/widget/TextView;

    .line 67
    .end local v0    # "detail":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mButtonMore:Landroid/widget/TextView;

    return-object v1
.end method

.method private getDetailContent()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mDetailContent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->getDetailView()Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "detail":Landroid/view/View;
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mDetailContent:Landroid/view/ViewGroup;

    .line 59
    .end local v0    # "detail":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mDetailContent:Landroid/view/ViewGroup;

    return-object v1
.end method

.method private handleClearDetailContent()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->getDetailContent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->setDetailRecord(Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;)V

    .line 127
    return-void
.end method

.method private setDetailItems(Landroid/view/View;)V
    .locals 1
    .param p1, "detailView"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->getDetailContent()Landroid/view/ViewGroup;

    move-result-object v0

    .line 78
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 79
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    return-void
.end method

.method private setDetailTitle(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->getDetailView()Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "detail":Landroid/view/View;
    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 73
    .local v1, "textview":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    return-void
.end method


# virtual methods
.method public clearDetailContent()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 122
    return-void
.end method

.method public getDetailButtonDone()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 47
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mButtonDone:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->getDetailView()Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "detail":Landroid/view/View;
    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mButtonDone:Landroid/widget/TextView;

    .line 51
    .end local v0    # "detail":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mButtonDone:Landroid/widget/TextView;

    return-object v1
.end method

.method public getDetailView()Landroid/view/View;
    .locals 3

    .prologue
    .line 36
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mDetailView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 38
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mDetailView:Landroid/view/View;

    .line 40
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->isBlackTheme()Z

    move-result v1

    if-nez v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mDetailView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mLauncherColorController:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    invoke-virtual {v2}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->getMainColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mDetailView:Landroid/view/View;

    return-object v1
.end method

.method public setCallback(Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$Callback;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mCallback:Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$Callback;

    .line 144
    return-void
.end method

.method public setDetailRecord(Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;)V
    .locals 4
    .param p1, "record"    # Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;

    .prologue
    .line 83
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mQSPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    invoke-virtual {v3, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->setDetailRecord(Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;)V

    .line 85
    if-nez p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailAdapter;

    .line 89
    .local v0, "detailAdapter":Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailAdapter;
    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailAdapter;->getTitle()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->setDetailTitle(I)V

    .line 91
    iget-object v3, p1, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;->detailView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->setDetailItems(Landroid/view/View;)V

    .line 93
    invoke-interface {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v1

    .line 94
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->getDetailButtonMore()Landroid/widget/TextView;

    move-result-object v2

    .line 95
    .local v2, "more":Landroid/widget/TextView;
    if-eqz v1, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    new-instance v3, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$1;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel$1;-><init>(Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 95
    :cond_2
    const/16 v3, 0x8

    goto :goto_1
.end method

.method public setQSPanel(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;)V
    .locals 0
    .param p1, "panel"    # Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->mQSPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    .line 118
    return-void
.end method

.method public updateResources()V
    .locals 4

    .prologue
    const v3, 0x7f0d0123

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->getDetailButtonDone()Landroid/widget/TextView;

    move-result-object v0

    .line 108
    .local v0, "done":Landroid/widget/TextView;
    invoke-static {v0, v3}, Lcom/android/systemui_ex/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 109
    const v2, 0x7f0c011f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 111
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/view/QSDetailPanel;->getDetailButtonMore()Landroid/widget/TextView;

    move-result-object v1

    .line 112
    .local v1, "more":Landroid/widget/TextView;
    invoke-static {v1, v3}, Lcom/android/systemui_ex/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 113
    const v2, 0x7f0c011e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 114
    return-void
.end method
