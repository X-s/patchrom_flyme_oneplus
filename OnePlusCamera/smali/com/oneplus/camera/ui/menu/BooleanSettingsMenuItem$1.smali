.class Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem$1;
.super Ljava/lang/Object;
.source "BooleanSettingsMenuItem.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem$1;->this$0:Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
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
    .line 33
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem$1;->this$0:Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    invoke-static {v0}, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;->-get1(Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;)Lcom/oneplus/base/Settings;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem$1;->this$0:Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    invoke-static {v1}, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;->-get0(Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    return-void
.end method
