.class Lcom/oneplus/settings/OPHomeSettings$5;
.super Ljava/lang/Object;
.source "OPHomeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPHomeSettings;->makeCurrentHome(Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPHomeSettings;

.field final synthetic val$newHome:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPHomeSettings;Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/oneplus/settings/OPHomeSettings$5;->this$0:Lcom/oneplus/settings/OPHomeSettings;

    iput-object p2, p0, Lcom/oneplus/settings/OPHomeSettings$5;->val$newHome:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/oneplus/settings/OPHomeSettings$5;->this$0:Lcom/oneplus/settings/OPHomeSettings;

    # getter for: Lcom/oneplus/settings/OPHomeSettings;->mCurrentHome:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;
    invoke-static {v0}, Lcom/oneplus/settings/OPHomeSettings;->access$300(Lcom/oneplus/settings/OPHomeSettings;)Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/oneplus/settings/OPHomeSettings$5;->this$0:Lcom/oneplus/settings/OPHomeSettings;

    # getter for: Lcom/oneplus/settings/OPHomeSettings;->mCurrentHome:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;
    invoke-static {v0}, Lcom/oneplus/settings/OPHomeSettings;->access$300(Lcom/oneplus/settings/OPHomeSettings;)Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->setChecked(Z)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPHomeSettings$5;->val$newHome:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->setChecked(Z)V

    .line 136
    iget-object v0, p0, Lcom/oneplus/settings/OPHomeSettings$5;->this$0:Lcom/oneplus/settings/OPHomeSettings;

    iget-object v1, p0, Lcom/oneplus/settings/OPHomeSettings$5;->val$newHome:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    # setter for: Lcom/oneplus/settings/OPHomeSettings;->mCurrentHome:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;
    invoke-static {v0, v1}, Lcom/oneplus/settings/OPHomeSettings;->access$302(Lcom/oneplus/settings/OPHomeSettings;Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;)Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    .line 138
    iget-object v0, p0, Lcom/oneplus/settings/OPHomeSettings$5;->val$newHome:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    iget-object v0, v0, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->activityName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "launcher3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/oneplus/settings/OPHomeSettings$5;->this$0:Lcom/oneplus/settings/OPHomeSettings;

    # getter for: Lcom/oneplus/settings/OPHomeSettings;->mLauncherCategory:Lcom/android/settings_ex/ui/OPLauncherViewCategory;
    invoke-static {v0}, Lcom/oneplus/settings/OPHomeSettings;->access$400(Lcom/oneplus/settings/OPHomeSettings;)Lcom/android/settings_ex/ui/OPLauncherViewCategory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/ui/OPLauncherViewCategory;->setLauncher(I)V

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/OPHomeSettings$5;->this$0:Lcom/oneplus/settings/OPHomeSettings;

    # getter for: Lcom/oneplus/settings/OPHomeSettings;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/oneplus/settings/OPHomeSettings;->access$700(Lcom/oneplus/settings/OPHomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/OPHomeSettings$5;->this$0:Lcom/oneplus/settings/OPHomeSettings;

    # getter for: Lcom/oneplus/settings/OPHomeSettings;->mHomeFilter:Landroid/content/IntentFilter;
    invoke-static {v1}, Lcom/oneplus/settings/OPHomeSettings;->access$500(Lcom/oneplus/settings/OPHomeSettings;)Landroid/content/IntentFilter;

    move-result-object v1

    const/high16 v2, 0x100000

    iget-object v3, p0, Lcom/oneplus/settings/OPHomeSettings$5;->this$0:Lcom/oneplus/settings/OPHomeSettings;

    # getter for: Lcom/oneplus/settings/OPHomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;
    invoke-static {v3}, Lcom/oneplus/settings/OPHomeSettings;->access$600(Lcom/oneplus/settings/OPHomeSettings;)[Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/OPHomeSettings$5;->val$newHome:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    iget-object v4, v4, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->activityName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 156
    new-instance v0, Lcom/oneplus/settings/OPHomeSettings$5$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPHomeSettings$5$1;-><init>(Lcom/oneplus/settings/OPHomeSettings$5;)V

    invoke-virtual {v0}, Lcom/oneplus/settings/OPHomeSettings$5$1;->start()V

    .line 170
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPHomeSettings$5;->this$0:Lcom/oneplus/settings/OPHomeSettings;

    # getter for: Lcom/oneplus/settings/OPHomeSettings;->mLauncherCategory:Lcom/android/settings_ex/ui/OPLauncherViewCategory;
    invoke-static {v0}, Lcom/oneplus/settings/OPHomeSettings;->access$400(Lcom/oneplus/settings/OPHomeSettings;)Lcom/android/settings_ex/ui/OPLauncherViewCategory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/OPLauncherViewCategory;->setLauncher(I)V

    goto :goto_0
.end method
