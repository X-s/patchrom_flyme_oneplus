.class Lcom/android/settings_ex/DevelopmentSettings$2;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DevelopmentSettings;->confirmEnableMultiWindowMode()V
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
    .line 1580
    iput-object p1, p0, Lcom/android/settings_ex/DevelopmentSettings$2;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1583
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings$2;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/settings_ex/DevelopmentSettings;->setEnableMultiWindow(Z)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->access$100(Lcom/android/settings_ex/DevelopmentSettings;Z)V

    .line 1584
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings$2;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    # invokes: Lcom/android/settings_ex/DevelopmentSettings;->updateAllOptions()V
    invoke-static {v0}, Lcom/android/settings_ex/DevelopmentSettings;->access$000(Lcom/android/settings_ex/DevelopmentSettings;)V

    .line 1585
    return-void

    .line 1583
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
