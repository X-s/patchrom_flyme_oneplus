.class Lcom/android/settings_ex/HomeSettings$4;
.super Ljava/lang/Object;
.source "HomeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/HomeSettings;->buildHomeActivitiesList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/HomeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/HomeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/HomeSettings;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/settings_ex/HomeSettings$4;->this$0:Lcom/android/settings_ex/HomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings_ex/HomeSettings$4;->this$0:Lcom/android/settings_ex/HomeSettings;

    invoke-static {v0}, Lcom/android/settings_ex/HomeSettings;->-get0(Lcom/android/settings_ex/HomeSettings;)Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->setChecked(Z)V

    .line 216
    return-void
.end method
