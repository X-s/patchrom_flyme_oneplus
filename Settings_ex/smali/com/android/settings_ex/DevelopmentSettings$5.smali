.class Lcom/android/settings_ex/DevelopmentSettings$5;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DevelopmentSettings;->confirmEnabledRequirePasswordToPowerOnMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DevelopmentSettings;)V
    .locals 0

    .prologue
    .line 1677
    iput-object p1, p0, Lcom/android/settings_ex/DevelopmentSettings$5;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings$5;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    # invokes: Lcom/android/settings_ex/DevelopmentSettings;->launchChooseOrConfirmLock()V
    invoke-static {v0}, Lcom/android/settings_ex/DevelopmentSettings;->access$300(Lcom/android/settings_ex/DevelopmentSettings;)V

    .line 1681
    return-void
.end method
