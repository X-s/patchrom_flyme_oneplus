.class Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;
.super Ljava/lang/Object;
.source "RestrictedListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->getOnItemClickListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$1:Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 202
    iget-object v4, p0, Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$1:Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-static {v4}, Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->-wrap0(Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment;)Lcom/android/settings_ex/RestrictedListPreference;

    move-result-object v3

    .line 203
    .local v3, "preference":Lcom/android/settings_ex/RestrictedListPreference;
    if-ltz p2, :cond_0

    invoke-virtual {v3}, Lcom/android/settings_ex/RestrictedListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    array-length v4, v4

    if-lt p2, v4, :cond_1

    .line 204
    :cond_0
    return-void

    .line 206
    :cond_1
    invoke-virtual {v3}, Lcom/android/settings_ex/RestrictedListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, p2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "entryValue":Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/android/settings_ex/RestrictedListPreference;->-wrap0(Lcom/android/settings_ex/RestrictedListPreference;Ljava/lang/CharSequence;)Lcom/android/settings_ex/RestrictedListPreference$RestrictedItem;

    move-result-object v1

    .line 208
    .local v1, "item":Lcom/android/settings_ex/RestrictedListPreference$RestrictedItem;
    if-eqz v1, :cond_3

    move-object v4, p1

    .line 209
    check-cast v4, Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 210
    .local v2, "listView":Landroid/widget/ListView;
    iget-object v4, p0, Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$1:Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-static {v4}, Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->-wrap1(Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment;)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 211
    iget-object v4, p0, Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$1:Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-virtual {v4}, Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 212
    iget-object v5, v1, Lcom/android/settings_ex/RestrictedListPreference$RestrictedItem;->enforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 211
    invoke-static {v4, v5}, Lcom/android/settings_exlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 217
    .end local v2    # "listView":Landroid/widget/ListView;
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$1:Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-static {v4}, Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->-wrap0(Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment;)Lcom/android/settings_ex/RestrictedListPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings_ex/RestrictedListPreference;->isAutoClosePreference()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 222
    iget-object v4, p0, Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$1:Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    .line 223
    const/4 v5, -0x1

    .line 222
    invoke-virtual {v4, p1, v5}, Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 224
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 201
    :cond_2
    return-void

    .line 214
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$1:Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-virtual {v4, p2}, Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->setClickedDialogEntryIndex(I)V

    goto :goto_0
.end method
