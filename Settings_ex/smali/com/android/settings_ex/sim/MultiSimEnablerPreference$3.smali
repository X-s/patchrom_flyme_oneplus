.class Lcom/android/settings_ex/sim/MultiSimEnablerPreference$3;
.super Ljava/lang/Object;
.source "MultiSimEnablerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/sim/MultiSimEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$3;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$3;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->update()V

    .line 492
    return-void
.end method
