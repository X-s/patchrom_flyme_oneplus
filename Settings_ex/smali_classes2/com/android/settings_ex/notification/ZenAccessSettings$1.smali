.class Lcom/android/settings_ex/notification/ZenAccessSettings$1;
.super Ljava/lang/Object;
.source "ZenAccessSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenAccessSettings;->reloadList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenAccessSettings;

.field final synthetic val$label:Ljava/lang/CharSequence;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenAccessSettings;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/ZenAccessSettings;
    .param p2, "val$pkg"    # Ljava/lang/String;
    .param p3, "val$label"    # Ljava/lang/CharSequence;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings_ex/notification/ZenAccessSettings;

    iput-object p2, p0, Lcom/android/settings_ex/notification/ZenAccessSettings$1;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings_ex/notification/ZenAccessSettings$1;->val$label:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 135
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 136
    .local v0, "access":Z
    if-eqz v0, :cond_0

    .line 137
    new-instance v1, Lcom/android/settings_ex/notification/ZenAccessSettings$ScaryWarningDialogFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/notification/ZenAccessSettings$ScaryWarningDialogFragment;-><init>()V

    .line 138
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenAccessSettings$1;->val$pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenAccessSettings$1;->val$label:Ljava/lang/CharSequence;

    .line 137
    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/notification/ZenAccessSettings$ScaryWarningDialogFragment;->setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings_ex/notification/ZenAccessSettings$ScaryWarningDialogFragment;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings_ex/notification/ZenAccessSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/notification/ZenAccessSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "dialog"

    .line 137
    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/notification/ZenAccessSettings$ScaryWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 145
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 141
    :cond_0
    new-instance v1, Lcom/android/settings_ex/notification/ZenAccessSettings$FriendlyWarningDialogFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/notification/ZenAccessSettings$FriendlyWarningDialogFragment;-><init>()V

    .line 142
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenAccessSettings$1;->val$pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenAccessSettings$1;->val$label:Ljava/lang/CharSequence;

    .line 141
    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings_ex/notification/ZenAccessSettings$FriendlyWarningDialogFragment;

    move-result-object v1

    .line 143
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings_ex/notification/ZenAccessSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/notification/ZenAccessSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "dialog"

    .line 141
    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
