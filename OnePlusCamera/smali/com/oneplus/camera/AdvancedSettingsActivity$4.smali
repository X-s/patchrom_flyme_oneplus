.class Lcom/oneplus/camera/AdvancedSettingsActivity$4;
.super Ljava/lang/Object;
.source "AdvancedSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AdvancedSettingsActivity;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AdvancedSettingsActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AdvancedSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/AdvancedSettingsActivity;

    .prologue
    .line 1306
    iput-object p1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$4;->this$0:Lcom/oneplus/camera/AdvancedSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$4;->this$0:Lcom/oneplus/camera/AdvancedSettingsActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->onBackPressed()V

    .line 1309
    return-void
.end method
