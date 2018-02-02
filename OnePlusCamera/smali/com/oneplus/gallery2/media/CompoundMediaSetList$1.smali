.class Lcom/oneplus/gallery2/media/CompoundMediaSetList$1;
.super Ljava/lang/Object;
.source "CompoundMediaSetList.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/CompoundMediaSetList;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/CompoundMediaSetList;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/CompoundMediaSetList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList$1;->this$0:Lcom/oneplus/gallery2/media/CompoundMediaSetList;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList$1;->this$0:Lcom/oneplus/gallery2/media/CompoundMediaSetList;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->access$0(Lcom/oneplus/gallery2/media/CompoundMediaSetList;)V

    .line 34
    return-void
.end method
