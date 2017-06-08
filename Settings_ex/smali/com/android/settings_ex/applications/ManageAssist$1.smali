.class Lcom/android/settings_ex/applications/ManageAssist$1;
.super Ljava/lang/Object;
.source "ManageAssist.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/ManageAssist;->postUpdateUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/ManageAssist;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ManageAssist;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageAssist$1;->this$0:Lcom/android/settings_ex/applications/ManageAssist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageAssist$1;->this$0:Lcom/android/settings_ex/applications/ManageAssist;

    # invokes: Lcom/android/settings_ex/applications/ManageAssist;->updateUi()V
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageAssist;->access$000(Lcom/android/settings_ex/applications/ManageAssist;)V

    .line 113
    return-void
.end method
