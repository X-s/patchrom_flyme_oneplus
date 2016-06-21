.class Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$1;
.super Ljava/lang/Object;
.source "OPCellularTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->handleClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$1;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$1;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->handleClickInner()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$200(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)V

    .line 124
    return-void
.end method
