.class Lcom/android/settings_ex/Lte4GEnabler$3;
.super Ljava/lang/Object;
.source "Lte4GEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 157
    iput-object p1, p0, Lcom/android/settings_ex/Lte4GEnabler$3;->this$0:Lcom/android/settings_ex/Lte4GEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/Lte4GEnabler$3;->this$0:Lcom/android/settings_ex/Lte4GEnabler;

    invoke-static {v0}, Lcom/android/settings_ex/Lte4GEnabler;->-wrap1(Lcom/android/settings_ex/Lte4GEnabler;)V

    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/Lte4GEnabler$3;->this$0:Lcom/android/settings_ex/Lte4GEnabler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ex/Lte4GEnabler;->-set0(Lcom/android/settings_ex/Lte4GEnabler;Z)Z

    .line 160
    return-void
.end method
