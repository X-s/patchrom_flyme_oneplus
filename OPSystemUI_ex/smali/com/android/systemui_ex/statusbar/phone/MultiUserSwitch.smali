.class public Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;
.super Landroid/widget/FrameLayout;
.source "MultiUserSwitch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mKeyguardMode:Z

.field private mKeyguardUserSwitcher:Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;

.field private mQsPanel:Lcom/android/systemui_ex/qs/QSPanel;

.field final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->mUserManager:Landroid/os/UserManager;

    .line 48
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 70
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->mUserManager:Landroid/os/UserManager;

    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->isUserSwitcherAvailable(Landroid/os/UserManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->mKeyguardMode:Z

    if-eqz v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->mKeyguardUserSwitcher:Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->mKeyguardUserSwitcher:Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v2, v4}, Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;->show(Z)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->mQsPanel:Lcom/android/systemui_ex/qs/QSPanel;

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->mQsPanel:Lcom/android/systemui_ex/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui_ex/qs/QSPanel;->getHost()Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->getUserSwitcherController()Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    move-result-object v1

    .line 79
    .local v1, "userSwitcherController":Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;
    if-eqz v1, :cond_0

    .line 80
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->mQsPanel:Lcom/android/systemui_ex/qs/QSPanel;

    iget-object v3, v1, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->userDetailAdapter:Lcom/android/systemui_ex/qs/QSTile$DetailAdapter;

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui_ex/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui_ex/qs/QSTile$DetailAdapter;)V

    goto :goto_0

    .line 85
    .end local v1    # "userSwitcherController":Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v2, p1, v3, v4, v5}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 53
    invoke-virtual {p0, p0}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->mUserManager:Landroid/os/UserManager;

    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->isUserSwitcherAvailable(Landroid/os/UserManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, "currentUser":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->mQsPanel:Lcom/android/systemui_ex/qs/QSPanel;

    if-eqz v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->mQsPanel:Lcom/android/systemui_ex/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui_ex/qs/QSPanel;->getHost()Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->getUserSwitcherController()Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    move-result-object v0

    .line 103
    .local v0, "controller":Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;
    if-eqz v0, :cond_0

    .line 104
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->getCurrentUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .end local v0    # "controller":Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0151

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 117
    .end local v1    # "currentUser":Ljava/lang/String;
    .local v2, "text":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    return-void

    .line 110
    .restart local v1    # "currentUser":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0152

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/String;
    goto :goto_0

    .line 115
    .end local v1    # "currentUser":Ljava/lang/String;
    .end local v2    # "text":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0153

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/String;
    goto :goto_0
.end method

.method public setKeyguardMode(Z)V
    .locals 0
    .param p1, "keyguardShowing"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->mKeyguardMode:Z

    .line 66
    return-void
.end method

.method public setKeyguardUserSwitcher(Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 0
    .param p1, "keyguardUserSwitcher"    # Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->mKeyguardUserSwitcher:Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;

    .line 62
    return-void
.end method

.method public setQsPanel(Lcom/android/systemui_ex/qs/QSPanel;)V
    .locals 0
    .param p1, "qsPanel"    # Lcom/android/systemui_ex/qs/QSPanel;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->mQsPanel:Lcom/android/systemui_ex/qs/QSPanel;

    .line 58
    return-void
.end method
