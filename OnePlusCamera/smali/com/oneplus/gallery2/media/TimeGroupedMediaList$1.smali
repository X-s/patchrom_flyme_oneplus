.class Lcom/oneplus/gallery2/media/TimeGroupedMediaList$1;
.super Ljava/lang/Object;
.source "TimeGroupedMediaList.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/TimeGroupedMediaList;
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
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/TimeGroupedMediaList;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/TimeGroupedMediaList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$1;->this$0:Lcom/oneplus/gallery2/media/TimeGroupedMediaList;

    .line 47
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
            "Ljava/util/Locale;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$1;->this$0:Lcom/oneplus/gallery2/media/TimeGroupedMediaList;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->onLocaleChanged()V

    .line 53
    return-void
.end method
