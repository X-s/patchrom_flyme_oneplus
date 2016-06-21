.class public Lcom/android/systemui_ex/qs/tiles/UserDetailView$Adapter;
.super Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$BaseUserAdapter;
.source "UserDetailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/qs/tiles/UserDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    .prologue
    .line 60
    invoke-direct {p0, p2}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$BaseUserAdapter;-><init>(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)V

    .line 61
    iput-object p1, p0, Lcom/android/systemui_ex/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/qs/tiles/UserDetailView$Adapter;->getItem(I)Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v0

    .line 67
    .local v0, "item":Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;
    iget-object v3, p0, Lcom/android/systemui_ex/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-static {v3, p2, p3}, Lcom/android/systemui_ex/qs/tiles/UserDetailItemView;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui_ex/qs/tiles/UserDetailItemView;

    move-result-object v2

    .line 69
    .local v2, "v":Lcom/android/systemui_ex/qs/tiles/UserDetailItemView;
    if-eq v2, p2, :cond_0

    .line 70
    invoke-virtual {v2, p0}, Lcom/android/systemui_ex/qs/tiles/UserDetailItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui_ex/qs/tiles/UserDetailView$Adapter;->getName(Landroid/content/Context;Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "name":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 74
    iget-object v3, p0, Lcom/android/systemui_ex/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui_ex/qs/tiles/UserDetailView$Adapter;->getDrawable(Landroid/content/Context;Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui_ex/qs/tiles/UserDetailItemView;->bind(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 78
    :goto_0
    iget-boolean v3, v0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/qs/tiles/UserDetailItemView;->setActivated(Z)V

    .line 79
    invoke-virtual {v2, v0}, Lcom/android/systemui_ex/qs/tiles/UserDetailItemView;->setTag(Ljava/lang/Object;)V

    .line 80
    return-object v2

    .line 76
    :cond_1
    iget-object v3, v0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui_ex/qs/tiles/UserDetailItemView;->bind(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;

    .line 87
    .local v0, "tag":Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/qs/tiles/UserDetailView$Adapter;->switchTo(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;)V

    .line 88
    return-void
.end method
