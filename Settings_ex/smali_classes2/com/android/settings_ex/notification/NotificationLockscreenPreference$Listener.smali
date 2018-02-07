.class Lcom/android/settings_ex/notification/NotificationLockscreenPreference$Listener;
.super Ljava/lang/Object;
.source "NotificationLockscreenPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NotificationLockscreenPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field private final mInner:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationLockscreenPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/notification/NotificationLockscreenPreference;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/NotificationLockscreenPreference;
    .param p2, "inner"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationLockscreenPreference$Listener;->this$0:Lcom/android/settings_ex/notification/NotificationLockscreenPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p2, p0, Lcom/android/settings_ex/notification/NotificationLockscreenPreference$Listener;->mInner:Landroid/content/DialogInterface$OnClickListener;

    .line 147
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationLockscreenPreference$Listener;->this$0:Lcom/android/settings_ex/notification/NotificationLockscreenPreference;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/settings_ex/notification/NotificationLockscreenPreference;->-set0(Lcom/android/settings_ex/notification/NotificationLockscreenPreference;Z)Z

    .line 163
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 153
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationLockscreenPreference$Listener;->mInner:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v2, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 154
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 155
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    .line 156
    .local v1, "selectedPosition":I
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationLockscreenPreference$Listener;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationLockscreenPreference$Listener;->mView:Landroid/view/View;

    .line 158
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationLockscreenPreference$Listener;->this$0:Lcom/android/settings_ex/notification/NotificationLockscreenPreference;

    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationLockscreenPreference$Listener;->this$0:Lcom/android/settings_ex/notification/NotificationLockscreenPreference;

    invoke-static {v4}, Lcom/android/settings_ex/notification/NotificationLockscreenPreference;->-get1(Lcom/android/settings_ex/notification/NotificationLockscreenPreference;)Z

    move-result v4

    invoke-static {v3, v1, v4}, Lcom/android/settings_ex/notification/NotificationLockscreenPreference;->-wrap0(Lcom/android/settings_ex/notification/NotificationLockscreenPreference;IZ)I

    move-result v3

    .line 157
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x102032c

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationLockscreenPreference$Listener;->this$0:Lcom/android/settings_ex/notification/NotificationLockscreenPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationLockscreenPreference$Listener;->this$0:Lcom/android/settings_ex/notification/NotificationLockscreenPreference;

    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationLockscreenPreference;->-get0(Lcom/android/settings_ex/notification/NotificationLockscreenPreference;)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 174
    invoke-static {v0, v1}, Lcom/android/settings_exlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 172
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationLockscreenPreference$Listener;->mView:Landroid/view/View;

    .line 167
    return-void
.end method
