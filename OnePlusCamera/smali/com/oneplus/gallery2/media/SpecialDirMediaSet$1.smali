.class Lcom/oneplus/gallery2/media/SpecialDirMediaSet$1;
.super Ljava/lang/Object;
.source "SpecialDirMediaSet.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/SpecialDirMediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/SpecialDirMediaSet;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/SpecialDirMediaSet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet$1;->this$0:Lcom/oneplus/gallery2/media/SpecialDirMediaSet;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 39
    if-eqz p1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet$1;->this$0:Lcom/oneplus/gallery2/media/SpecialDirMediaSet;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->access$0(Lcom/oneplus/gallery2/media/SpecialDirMediaSet;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    .line 43
    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 44
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet$1;->this$0:Lcom/oneplus/gallery2/media/SpecialDirMediaSet;

    invoke-static {v1}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->access$1(Lcom/oneplus/gallery2/media/SpecialDirMediaSet;)Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 50
    :goto_1
    return-void

    .line 40
    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 43
    goto :goto_0

    .line 46
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet$1;->this$0:Lcom/oneplus/gallery2/media/SpecialDirMediaSet;

    invoke-static {v1}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->access$1(Lcom/oneplus/gallery2/media/SpecialDirMediaSet;)Z

    move-result v1

    .line 47
    iget-object v2, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet$1;->this$0:Lcom/oneplus/gallery2/media/SpecialDirMediaSet;

    invoke-static {v2, v0}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->access$2(Lcom/oneplus/gallery2/media/SpecialDirMediaSet;Z)V

    .line 48
    iget-object v2, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet$1;->this$0:Lcom/oneplus/gallery2/media/SpecialDirMediaSet;

    sget-object v3, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2, v3, v1, v0}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->access$3(Lcom/oneplus/gallery2/media/SpecialDirMediaSet;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method
