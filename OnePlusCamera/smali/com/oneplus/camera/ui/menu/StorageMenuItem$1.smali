.class Lcom/oneplus/camera/ui/menu/StorageMenuItem$1;
.super Ljava/lang/Object;
.source "StorageMenuItem.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/menu/StorageMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;Lcom/oneplus/io/StorageManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/menu/StorageMenuItem;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/menu/StorageMenuItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/menu/StorageMenuItem;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/oneplus/camera/ui/menu/StorageMenuItem$1;->this$0:Lcom/oneplus/camera/ui/menu/StorageMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/ui/menu/StorageMenuItem$1;->this$0:Lcom/oneplus/camera/ui/menu/StorageMenuItem;

    invoke-static {v1}, Lcom/oneplus/camera/ui/menu/StorageMenuItem;->-get2(Lcom/oneplus/camera/ui/menu/StorageMenuItem;)Lcom/oneplus/io/StorageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/oneplus/camera/ui/menu/StorageMenuItem$1;->this$0:Lcom/oneplus/camera/ui/menu/StorageMenuItem;

    invoke-static {v1}, Lcom/oneplus/camera/ui/menu/StorageMenuItem;->-get2(Lcom/oneplus/camera/ui/menu/StorageMenuItem;)Lcom/oneplus/io/StorageManager;

    move-result-object v1

    sget-object v2, Lcom/oneplus/io/Storage$Type;->SD_CARD:Lcom/oneplus/io/Storage$Type;

    invoke-static {v1, v2}, Lcom/oneplus/io/StorageUtils;->findStorage(Lcom/oneplus/io/StorageManager;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;

    move-result-object v0

    .line 42
    .local v0, "storage":Lcom/oneplus/io/Storage;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oneplus/io/Storage;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/oneplus/camera/ui/menu/StorageMenuItem$1;->this$0:Lcom/oneplus/camera/ui/menu/StorageMenuItem;

    invoke-static {v1}, Lcom/oneplus/camera/ui/menu/StorageMenuItem;->-get1(Lcom/oneplus/camera/ui/menu/StorageMenuItem;)Lcom/oneplus/base/Settings;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/menu/StorageMenuItem$1;->this$0:Lcom/oneplus/camera/ui/menu/StorageMenuItem;

    invoke-static {v2}, Lcom/oneplus/camera/ui/menu/StorageMenuItem;->-get0(Lcom/oneplus/camera/ui/menu/StorageMenuItem;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/oneplus/io/Storage$Type;->SD_CARD:Lcom/oneplus/io/Storage$Type;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    return-void

    .line 48
    .end local v0    # "storage":Lcom/oneplus/io/Storage;
    :cond_0
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/oneplus/camera/ui/menu/StorageMenuItem$1;->this$0:Lcom/oneplus/camera/ui/menu/StorageMenuItem;

    sget-object v2, Lcom/oneplus/camera/ui/menu/StorageMenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/ui/menu/StorageMenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/menu/StorageMenuItem$1;->this$0:Lcom/oneplus/camera/ui/menu/StorageMenuItem;

    invoke-static {v1}, Lcom/oneplus/camera/ui/menu/StorageMenuItem;->-get1(Lcom/oneplus/camera/ui/menu/StorageMenuItem;)Lcom/oneplus/base/Settings;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/menu/StorageMenuItem$1;->this$0:Lcom/oneplus/camera/ui/menu/StorageMenuItem;

    invoke-static {v2}, Lcom/oneplus/camera/ui/menu/StorageMenuItem;->-get0(Lcom/oneplus/camera/ui/menu/StorageMenuItem;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/oneplus/io/Storage$Type;->INTERNAL:Lcom/oneplus/io/Storage$Type;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    return-void
.end method
