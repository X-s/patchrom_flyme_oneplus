.class Lcom/oneplus/camera/ui/menu/MenuListView$1;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/menu/MenuListView;
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
.field final synthetic this$0:Lcom/oneplus/camera/ui/menu/MenuListView;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/menu/MenuListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/menu/MenuListView;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/oneplus/camera/ui/menu/MenuListView$1;->this$0:Lcom/oneplus/camera/ui/menu/MenuListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
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
    .line 46
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView$1;->this$0:Lcom/oneplus/camera/ui/menu/MenuListView;

    check-cast p1, Lcom/oneplus/camera/ui/menu/MenuItem;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    invoke-static {v0, p1}, Lcom/oneplus/camera/ui/menu/MenuListView;->-wrap2(Lcom/oneplus/camera/ui/menu/MenuListView;Lcom/oneplus/camera/ui/menu/MenuItem;)V

    .line 44
    return-void
.end method
