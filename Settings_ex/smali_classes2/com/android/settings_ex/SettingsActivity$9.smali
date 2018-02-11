.class Lcom/android/settings_ex/SettingsActivity$9;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SettingsActivity;->updateTilesList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 1376
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity$9;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity$9;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-static {v0}, Lcom/android/settings_ex/SettingsActivity;->-wrap0(Lcom/android/settings_ex/SettingsActivity;)V

    .line 1378
    return-void
.end method
