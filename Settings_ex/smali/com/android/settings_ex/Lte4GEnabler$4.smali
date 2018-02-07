.class Lcom/android/settings_ex/Lte4GEnabler$4;
.super Ljava/lang/Object;
.source "Lte4GEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/Lte4GEnabler;->promptUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/Lte4GEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/Lte4GEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/Lte4GEnabler;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/settings_ex/Lte4GEnabler$4;->this$0:Lcom/android/settings_ex/Lte4GEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/Lte4GEnabler$4;->this$0:Lcom/android/settings_ex/Lte4GEnabler;

    invoke-static {v0}, Lcom/android/settings_ex/Lte4GEnabler;->-get0(Lcom/android/settings_ex/Lte4GEnabler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/Lte4GEnabler$4;->this$0:Lcom/android/settings_ex/Lte4GEnabler;

    invoke-static {v0}, Lcom/android/settings_ex/Lte4GEnabler;->-get1(Lcom/android/settings_ex/Lte4GEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 167
    :cond_0
    return-void
.end method
