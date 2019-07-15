@foreach ($this->bulletin->{$ke}() as $heading => $category)
    <div class="x_panel_b x_panel">
        <div class="x_panel_heading">
            <h3 class="x_title">{{ $heading }}</h3>
        </div>
        <div class="x_content">
            <ul class="list-unstyled timeline_c timeline">
                @if (!$this->bulletin->category($category))
                    <li>No item found</li>
                @else
                    @foreach ($this->bulletin->category($category) as $news)
                        <li>
                            <h2 class="title">
                                <a href="#">{{ $news->title }}</a>
                            </h2>
                            <div style="font-style: italic">
                                <span>{{ relative_date($news->created_at) }}</span> by <strong>{{ user($news->id_creator)->first_name }} {{ user($news->id_creator)->last_name }}</strong>
                            </div>
                        </li>
                    @endforeach
                @endif
            </ul>
        </div>
    </div>
@endforeach