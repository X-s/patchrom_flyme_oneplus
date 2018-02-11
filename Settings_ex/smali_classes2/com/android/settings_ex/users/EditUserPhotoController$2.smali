.class Lcom/android/settings_ex/users/EditUserPhotoController$2;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/users/EditUserPhotoController;->showUpdatePhotoPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/users/EditUserPhotoController;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/users/EditUserPhotoController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/users/EditUserPhotoController;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings_ex/users/EditUserPhotoController$2;->this$0:Lcom/android/settings_ex/users/EditUserPhotoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController$2;->this$0:Lcom/android/settings_ex/users/EditUserPhotoController;

    invoke-static {v0}, Lcom/android/settings_ex/users/EditUserPhotoController;->-wrap2(Lcom/android/settings_ex/users/EditUserPhotoController;)V

    .line 149
    return-void
.end method
