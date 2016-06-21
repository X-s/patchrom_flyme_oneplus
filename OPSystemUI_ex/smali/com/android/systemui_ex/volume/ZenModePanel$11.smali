.class Lcom/android/systemui_ex/volume/ZenModePanel$11;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Lcom/android/systemui_ex/volume/Interaction$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/volume/ZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/volume/ZenModePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/volume/ZenModePanel;)V
    .locals 0

    .prologue
    .line 922
    iput-object p1, p0, Lcom/android/systemui_ex/volume/ZenModePanel$11;->this$0:Lcom/android/systemui_ex/volume/ZenModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteraction()V
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$11;->this$0:Lcom/android/systemui_ex/volume/ZenModePanel;

    # invokes: Lcom/android/systemui_ex/volume/ZenModePanel;->fireInteraction()V
    invoke-static {v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->access$2300(Lcom/android/systemui_ex/volume/ZenModePanel;)V

    .line 926
    return-void
.end method
