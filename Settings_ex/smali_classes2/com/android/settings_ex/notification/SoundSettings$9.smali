.class Lcom/android/settings_ex/notification/SoundSettings$9;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/SoundSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/SoundSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/SoundSettings;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/settings_ex/notification/SoundSettings$9;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 349
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 350
    .local v1, "intents":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    .line 351
    const-string/jumbo v2, "com.oneplus.dirac.simplemanager"

    .line 352
    const-string/jumbo v3, "com.oneplus.dirac.simplemanager.SimpleManager"

    .line 350
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 354
    iget-object v2, p0, Lcom/android/settings_ex/notification/SoundSettings$9;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 355
    const/4 v2, 0x1

    return v2
.end method
