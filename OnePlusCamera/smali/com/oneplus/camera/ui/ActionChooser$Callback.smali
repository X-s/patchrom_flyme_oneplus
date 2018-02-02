.class public abstract Lcom/oneplus/camera/ui/ActionChooser$Callback;
.super Ljava/lang/Object;
.source "ActionChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ActionChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Lcom/oneplus/camera/ui/ActionChooser;ILandroid/content/Intent;)V
    .locals 0
    .param p1, "chooser"    # Lcom/oneplus/camera/ui/ActionChooser;
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 59
    return-void
.end method

.method public onActivitySelected(Lcom/oneplus/camera/ui/ActionChooser;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "chooser"    # Lcom/oneplus/camera/ui/ActionChooser;
    .param p2, "activityName"    # Landroid/content/ComponentName;

    .prologue
    .line 67
    return-void
.end method
