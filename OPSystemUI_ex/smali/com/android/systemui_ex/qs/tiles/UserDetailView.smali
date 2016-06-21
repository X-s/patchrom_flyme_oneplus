.class public Lcom/android/systemui_ex/qs/tiles/UserDetailView;
.super Lcom/android/systemui_ex/qs/PseudoGridView;
.source "UserDetailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/qs/tiles/UserDetailView$Adapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/systemui_ex/qs/tiles/UserDetailView$Adapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/qs/PseudoGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public static inflate(Landroid/content/Context;Landroid/view/ViewGroup;Z)Lcom/android/systemui_ex/qs/tiles/UserDetailView;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attach"    # Z

    .prologue
    .line 41
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003d

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/qs/tiles/UserDetailView;

    return-object v0
.end method


# virtual methods
.method public createAndSetAdapter(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    .prologue
    .line 46
    new-instance v0, Lcom/android/systemui_ex/qs/tiles/UserDetailView$Adapter;

    iget-object v1, p0, Lcom/android/systemui_ex/qs/tiles/UserDetailView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui_ex/qs/tiles/UserDetailView$Adapter;-><init>(Landroid/content/Context;Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)V

    iput-object v0, p0, Lcom/android/systemui_ex/qs/tiles/UserDetailView;->mAdapter:Lcom/android/systemui_ex/qs/tiles/UserDetailView$Adapter;

    .line 47
    iget-object v0, p0, Lcom/android/systemui_ex/qs/tiles/UserDetailView;->mAdapter:Lcom/android/systemui_ex/qs/tiles/UserDetailView$Adapter;

    invoke-static {p0, v0}, Lcom/android/systemui_ex/qs/PseudoGridView$ViewGroupAdapterBridge;->link(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;)V

    .line 48
    return-void
.end method

.method public refreshAdapter()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui_ex/qs/tiles/UserDetailView;->mAdapter:Lcom/android/systemui_ex/qs/tiles/UserDetailView$Adapter;

    invoke-virtual {v0}, Lcom/android/systemui_ex/qs/tiles/UserDetailView$Adapter;->refresh()V

    .line 52
    return-void
.end method
