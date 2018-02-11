.class Lcom/android/settings_ex/notification/ZenModeAutomationSettings$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "ZenModeAutomationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/ZenModeAutomationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final prefReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeAutomationSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/notification/ZenModeAutomationSettings;Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/ZenModeAutomationSettings;
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$LoadIconTask;->this$0:Lcom/android/settings_ex/notification/ZenModeAutomationSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 343
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$LoadIconTask;->prefReference:Ljava/lang/ref/WeakReference;

    .line 342
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "params"    # [Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 348
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$LoadIconTask;->this$0:Lcom/android/settings_ex/notification/ZenModeAutomationSettings;

    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModeAutomationSettings;->-get0(Lcom/android/settings_ex/notification/ZenModeAutomationSettings;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 347
    check-cast p1, [Landroid/content/pm/ApplicationInfo;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$LoadIconTask;->doInBackground([Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 353
    if-eqz p1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$LoadIconTask;->prefReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    .line 355
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 352
    .end local v0    # "pref":Landroid/support/v7/preference/Preference;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/Object;

    .prologue
    .line 352
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1    # "icon":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$LoadIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
