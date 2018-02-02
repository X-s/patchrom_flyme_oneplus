.class Landroid/support/v4/app/FragmentTransitionCompat21$2;
.super Ljava/lang/Object;
.source "FragmentTransitionCompat21.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentTransitionCompat21;->addTransitionTargets(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$container:Landroid/view/View;

.field final synthetic val$enterTransition:Landroid/transition/Transition;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$inFragment:Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;

.field final synthetic val$nameOverrides:Ljava/util/Map;

.field final synthetic val$nonExistentView:Landroid/view/View;

.field final synthetic val$renamedViews:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Ljava/util/Map;Ljava/util/Map;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$container:Landroid/view/View;

    iput-object p2, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$inFragment:Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;

    iput-object p3, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nameOverrides:Ljava/util/Map;

    iput-object p4, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$renamedViews:Ljava/util/Map;

    iput-object p5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enterTransition:Landroid/transition/Transition;

    iput-object p6, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enteringViews:Ljava/util/ArrayList;

    iput-object p7, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nonExistentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .prologue
    .line 117
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$container:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 118
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$inFragment:Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;

    invoke-interface {v0}, Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;->getView()Landroid/view/View;

    move-result-object v2

    .line 119
    if-nez v2, :cond_1

    .line 140
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 120
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nameOverrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enterTransition:Landroid/transition/Transition;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enteringViews:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Landroid/support/v4/app/FragmentTransitionCompat21;->access$000(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enteringViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$renamedViews:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 135
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enteringViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enterTransition:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 137
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enterTransition:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$enteringViews:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 121
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$renamedViews:Ljava/util/Map;

    invoke-static {v0, v2}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$renamedViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nameOverrides:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 123
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$nameOverrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 124
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 125
    iget-object v4, p0, Landroid/support/v4/app/FragmentTransitionCompat21$2;->val$renamedViews:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 126
    if-eqz v1, :cond_4

    .line 127
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    invoke-virtual {v1, v0}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto :goto_1
.end method
