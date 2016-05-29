.class Lcom/android/settings_ex/deviceinfo/Memory$6;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/Memory;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/Memory;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/Memory$6;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory$6;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    # getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mUnmountPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/Memory;->access$300(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory$6;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    # getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mUnmountPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/Memory;->access$300(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 478
    :cond_0
    return-void
.end method
