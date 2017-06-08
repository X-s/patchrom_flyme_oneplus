.class Lcom/oneplus/settings/OneplusColorManager$1;
.super Ljava/lang/Object;
.source "OneplusColorManager.java"

# interfaces
.implements Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OneplusColorManager;->initColorManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OneplusColorManager;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OneplusColorManager;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/oneplus/settings/OneplusColorManager$1;->this$0:Lcom/oneplus/settings/OneplusColorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oneplus/settings/OneplusColorManager$1;->this$0:Lcom/oneplus/settings/OneplusColorManager;

    # invokes: Lcom/oneplus/settings/OneplusColorManager;->getColorManagerInstance()V
    invoke-static {v0}, Lcom/oneplus/settings/OneplusColorManager;->access$000(Lcom/oneplus/settings/OneplusColorManager;)V

    .line 46
    return-void
.end method
