.class Lcom/android/systemui_ex/recents/RecentsActivity$3;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/recents/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/recents/RecentsActivity;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/systemui_ex/recents/RecentsActivity$3;->this$0:Lcom/android/systemui_ex/recents/RecentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/systemui_ex/recents/RecentsActivity$3;->this$0:Lcom/android/systemui_ex/recents/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/RecentsActivity;->onDebugModeTriggered()V

    .line 194
    return-void
.end method
