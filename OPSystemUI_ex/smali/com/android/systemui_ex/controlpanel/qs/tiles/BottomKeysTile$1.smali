.class Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile$1;
.super Ljava/lang/Object;
.source "BottomKeysTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->showDisableNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile$1;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile$1;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->mCallbackControlPanel:Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->access$000(Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;)Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;->hideHintView()V

    .line 136
    return-void
.end method
