.class public abstract Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$BaseUserAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseUserAdapter"
.end annotation


# instance fields
.field final mController:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;


# direct methods
.method protected constructor <init>(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    .prologue
    .line 366
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 367
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    .line 368
    # getter for: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mAdapters:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$900(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 5

    .prologue
    .line 373
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mKeyguardMonitor:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;
    invoke-static {v4}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$1000(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mKeyguardMonitor:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;
    invoke-static {v4}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$1000(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 375
    .local v3, "secureKeyguardShowing":Z
    :goto_0
    if-nez v3, :cond_2

    .line 376
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$300(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 388
    :cond_0
    return v1

    .line 373
    .end local v3    # "secureKeyguardShowing":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 379
    .restart local v3    # "secureKeyguardShowing":Z
    :cond_2
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$300(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 380
    .local v0, "N":I
    const/4 v1, 0x0

    .line 381
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 382
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$300(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;

    iget-boolean v4, v4, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->isRestricted:Z

    if-nez v4, :cond_0

    .line 385
    add-int/lit8 v1, v1, 0x1

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getDrawable(Landroid/content/Context;Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;

    .prologue
    .line 421
    iget-boolean v0, p2, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-eqz v0, :cond_0

    .line 422
    const v0, 0x7f02008b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 424
    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p2, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v0, :cond_1

    const/16 v0, -0x2710

    :goto_1
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    goto :goto_1
.end method

.method public getItem(I)Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$300(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getItem(I)Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 398
    int-to-long v0, p1

    return-wide v0
.end method

.method public getName(Landroid/content/Context;Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;

    .prologue
    .line 406
    iget-boolean v0, p2, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v0, :cond_2

    .line 407
    iget-boolean v0, p2, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v0, :cond_0

    .line 408
    const v0, 0x7f0c0158

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    :goto_0
    return-object v0

    .line 410
    :cond_0
    iget-object v0, p2, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez v0, :cond_1

    const v0, 0x7f0c0157

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f0c0156

    goto :goto_1

    .line 413
    :cond_2
    iget-boolean v0, p2, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-eqz v0, :cond_3

    .line 414
    const v0, 0x7f0c0154

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 416
    :cond_3
    iget-object v0, p2, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    const/16 v1, -0x2710

    # invokes: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->refreshUsers(I)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$700(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;I)V

    .line 430
    return-void
.end method

.method public switchTo(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->switchTo(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;)V

    .line 403
    return-void
.end method
