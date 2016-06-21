.class Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MyHandler;
.super Landroid/os/Handler;
.source "OPCellularTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MyHandler;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;
    .param p2, "x1"    # Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$1;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MyHandler;-><init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MyHandler;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    const/4 v1, 0x1

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->setMobileData(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$100(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;Z)V

    goto :goto_0

    .line 78
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile$MyHandler;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->setMobileData(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;->access$100(Lcom/android/systemui_ex/controlpanel/qs/tiles/OPCellularTile;Z)V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
