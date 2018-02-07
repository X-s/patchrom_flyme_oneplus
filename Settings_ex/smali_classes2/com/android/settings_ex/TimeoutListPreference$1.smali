.class Lcom/android/settings_ex/TimeoutListPreference$1;
.super Ljava/lang/Object;
.source "TimeoutListPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/TimeoutListPreference;->onDialogCreated(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/TimeoutListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TimeoutListPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/TimeoutListPreference;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings_ex/TimeoutListPreference$1;->this$0:Lcom/android/settings_ex/TimeoutListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/TimeoutListPreference$1;->this$0:Lcom/android/settings_ex/TimeoutListPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/TimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/TimeoutListPreference$1;->this$0:Lcom/android/settings_ex/TimeoutListPreference;

    invoke-static {v1}, Lcom/android/settings_ex/TimeoutListPreference;->-get0(Lcom/android/settings_ex/TimeoutListPreference;)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Lcom/android/settings_exlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 64
    return-void
.end method
