.class Lcom/android/systemui_ex/controlpanel/qs/QSPanel$1;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/controlpanel/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

.field final synthetic val$qsh:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$1;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    iput-object p2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$1;->val$qsh:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTilesChanged()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$1;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$1;->val$qsh:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v1

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->setTiles(Ljava/util/Collection;)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->access$200(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;Ljava/util/Collection;)V

    .line 106
    return-void
.end method
