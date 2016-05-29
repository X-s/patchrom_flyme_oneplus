.class Lcom/android/settings_ex/sim/SimSettings$SimPreference$2;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/sim/SimSettings$SimPreference;->createEditDialog(Lcom/android/settings_ex/sim/SimSettings$SimPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/sim/SimSettings$SimPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/sim/SimSettings$SimPreference;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference$2;->this$1:Lcom/android/settings_ex/sim/SimSettings$SimPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 620
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 621
    return-void
.end method
