.class Lcom/android/settings_ex/DreamSettings$DreamInfoPreference$2;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference$2;->this$1:Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference$2;->this$1:Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;

    iget-object v0, v0, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/settings_ex/DreamSettings;

    invoke-static {v0}, Lcom/android/settings_ex/DreamSettings;->-get0(Lcom/android/settings_ex/DreamSettings;)Lcom/android/settings_exlib/dream/DreamBackend;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference$2;->this$1:Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;

    invoke-static {v1}, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;->-get0(Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;)Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/dream/DreamBackend;->launchSettings(Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;)V

    .line 327
    return-void
.end method
