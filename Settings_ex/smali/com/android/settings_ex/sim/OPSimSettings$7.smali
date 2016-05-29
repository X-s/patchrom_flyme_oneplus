.class Lcom/android/settings_ex/sim/OPSimSettings$7;
.super Ljava/lang/Object;
.source "OPSimSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/sim/OPSimSettings;->createSTKPreference(I)Landroid/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/sim/OPSimSettings;

.field final synthetic val$slotID:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/sim/OPSimSettings;I)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/settings_ex/sim/OPSimSettings$7;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    iput p2, p0, Lcom/android/settings_ex/sim/OPSimSettings$7;->val$slotID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 442
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 443
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.stk"

    iget v2, p0, Lcom/android/settings_ex/sim/OPSimSettings$7;->val$slotID:I

    if-nez v2, :cond_0

    const-string v2, "com.android.stk.StkLauncherActivity"

    :goto_0
    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 448
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/sim/OPSimSettings$7;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/sim/OPSimSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 443
    :cond_0
    const-string v2, "com.android.stk.StkLauncherActivity2"

    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
